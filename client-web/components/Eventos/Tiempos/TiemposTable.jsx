import {
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Spinner,
  Input,
  Button,
  useDisclosure,
  Modal,
  ModalContent,
  Image,
  Select,
  SelectItem,
} from "@nextui-org/react";
import toast, { Toaster } from "react-hot-toast";
import { IoCarSportOutline } from "react-icons/io5";
import { FaCirclePlus } from "react-icons/fa6";
import { FaFile } from "react-icons/fa6";
import { CiSearch } from "react-icons/ci";
import { PiPencilSimpleFill } from "react-icons/pi";
import { BsTrash2Fill } from "react-icons/bs";
import { RxLapTimer } from "react-icons/rx";
import React, { useMemo, useRef, useState, useEffect } from "react";
import EspecialService from "@/services/EspecialService";
import ParametrosService from "@/services/ParametrosService";
import TIemposService from "@/services/TIemposService";
import { columns as allColumns } from "./columns";
import Form from "./form";
import Foto from "@/components/Modals/Foto";
import Eliminar from "@/components/Modals/Eliminar";
import jsPDF from "jspdf";
import "jspdf-autotable";
// import Gen_Pdf from "@/components/PDF/Gen_Pdf";

import echo from "@/components/utils/echo";
import ModalConfirm from "./ModalConfirm";

function TiemposTable({ idEvent, especiales, categorias, modo, eventName }) {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const { data: paramsData, mutate: paramsMutate, isLoading: paramsIsLoading } = ParametrosService.get({
    event_id: idEvent,
  });

  // Para el Select de Especiales
  const [key, setKey] = useState(0); // Para controlar el Select
  const [selEsp, setSelEsp] = useState(null);
  const [set_selEsp, set_setSelEsp] = useState("");
  // const [esp_title, setEsp_title] = useState("");
  
  // Select de Categoria
  const [selCat, setSelCat] = useState("todas");
  
  // Data de Tiempos
  const [rowPerPage, setRowPerPage] = useState(500);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);
  const [search, setSearch] = useState("");


  useEffect(() => {
    if (paramsData) {
      setSelEsp(paramsData.set_especial ?? especiales[0]?.id);
      set_setSelEsp(paramsData.set_especial?.toString() ?? especiales[0]?.id.toString());
      setKey((prevKey) => prevKey + 1); // Forzar el re-renderizado del Select

      // setEsp_title(especiales.find((esp) => esp.id === parseInt(paramsData.set_especial, 10)))
    }
  }, [paramsData]);
  
  const { data: swrData, mutate: mutarList, isLoading } = EspecialService.get({
    page: 1,
    rowsPerPage: 500,
    especial: selEsp,
    categoria: selCat,
    search,
  });

  // console.log('times', data)

  const [tiempos, setTiempos] = useState([]);
  useEffect(() => {
    if (swrData  && swrData .data) {
      setTiempos(swrData .data);
    }
    
  }, [swrData ]);

  //! WEBSOCKETS - Escuchar el evento
  useEffect(() => {
    console.log("Conectando al WebSocket...");
  
    const channel = echo.channel("tiempos");
  
    // * Tiempo Creado
    channel.listen(".TiempoCreado", (data) => {
      console.log("Nuevo tiempo recibido: ", data);
      showToast("Nuevo Tiempo", "success");

      // console.log("antes", tiempos);

      const convertirHoraASegundos = (hora) => {
        const [horas, minutos, segundos] = hora.split(":").map(Number);
        return horas * 3600 + minutos * 60 + segundos;
      };
      
      // Actualizar la lista de Tiempos
      setTiempos((prevTiempos) => {
        if (!prevTiempos) return [data.tiempo];
        
        // Verificar si el tiempo ya existe en la lista (evitar duplicados)
        const tiempoYaExiste = prevTiempos.some((tiempo) => tiempo.id === data.tiempo.id);
        if (tiempoYaExiste) return prevTiempos; // Si ya existe, no hagas nada

        // Agregar el nuevo tiempo a la lista
        const nuevosTiempos = [...prevTiempos, data.tiempo];

        // Ordenar los tiempos por hora_marcado (ascendente)
        nuevosTiempos.sort((a, b) => {
          const tiempoA = a.hora_marcado; // Obtener hora_marcado del tiempo A
          const tiempoB = b.hora_marcado; // Obtener hora_marcado del tiempo B

          // Convertir las horas a segundos para compararlas
          const segundosA = convertirHoraASegundos(tiempoA);
          const segundosB = convertirHoraASegundos(tiempoB);

          return segundosA - segundosB; // Orden ascendente
        });

        return nuevosTiempos;
      });
      
      // console.log("despues", tiempos);
    });

    // Todo Tiempo Editado
    channel.listen(".TiempoEditado", (data) => {
      console.log("Tiempo editado recibido: ", data);
      showToast("Tiempo Editado", "success");
      mutarList();
    });
  
    return () => {
      console.log("Desuscribiendo del canal tiempos...");
      channel.stopListening(".TiempoCreado");
      channel.stopListening(".TiempoEditado");
      echo.leaveChannel("tiempos");
    };
  }, []);

  const pages = useMemo(() => {
    return swrData?.last_page;
  }, [swrData?.total, rowPerPage]);

  // Filtrar las columnas basadas en el valor de `modo`
  const columns = useMemo(() => {
    if (modo === "client") {
      return allColumns.filter(
        (column) =>
          !["acciones", "hora_salida", "hora_llegada"].includes(column.uid),
      );
    } else {
      return allColumns.filter((column) => column.uid !== "foto");
    }
  }, [modo]);

  const handleSelEsp = (e) => {
    setSelEsp(e.target.value);
    // setEsp_title(especiales.find((esp) => esp.id === parseInt(e.target.value, 10)));
  };

  const handleSelCategoria = (e) => {
    setSelCat(e.target.value);
    catRef.current = e.target.value;
  };

  const handleSearch = (value) => {
    setSearch(value);
  };

  const calculateTimeDifference = (startTime, endTime) => {
    const diff =
      new Date(`1970-01-01T${endTime}`) - new Date(`1970-01-01T${startTime}`);
    
    const hours = Math.floor(diff / (1000 * 60 * 60)); // Calculate hours
    const minutes = Math.floor((diff % (1000 * 60 * 60)) / 60000); // Calculate minutes
    const seconds = Math.floor((diff % 60000) / 1000); // Calculate seconds
    const milliseconds = Math.floor((diff % 1000) / 100); // Get first digit of milliseconds
  
    // Return format: HH:MM:SS.m or MM:SS.m when no hours involved
    return `+ ${hours > 0 ? hours + ":" : ""}${minutes < 10 && hours > 0 ? "0" + minutes : minutes}:${seconds < 10 ? "0" : ""}${seconds}.${milliseconds}`;
  };


  // ? GENERAR SALIDAS
  //* Funcion para abrir el Modal <ModalConfirm />
  const [isConf, setConf] = useState(false); // Modal de foto
  const abrirConf = async () => {
    setConf(true);
  };
  
  const gen_salida = async () => {
    try {
      const res = await TIemposService.post({
        especial: selEsp
      });
      setConf(false);
      mutarList()
      showToast(res, "success");
    } catch (error) {
      showToast(error.response.data.error, "error");
      setConf(false);
      console.log('error', error);
    }
  };
  
  const catRef = useRef('todas');

  // * Para el PDF
  const pressPdf = () => {
    const generatePdf = () => {
      const tiempos = swrData.data;
  
      const doc = new jsPDF();
      doc.setFontSize(18);
      doc.text(`${tiempos[0].especial.nombre} - ${eventName}`, 14, 20);
  
      const columns = [
        "Nº",
        "COCHE",
        "PILOTO",
        "CAT",
        "H. SALIDA",
        "H. LLEGADA",
        "PENA",
        "TIEMPO",
      ];
  
      const tableData = tiempos.map((tiempo, index) => [
        index + 1,
        tiempo.tripulacion.auto_num,
        `${tiempo.tripulacion.piloto.nombre} ${tiempo.tripulacion.piloto.apellidos}`,
        tiempo.tripulacion.categoria,
        tiempo.hora_salida,
        tiempo.hora_llegada,
        tiempo.penalizacion,
        tiempo.hora_marcado,
      ]);
  
      doc.autoTable({
        head: [columns],
        body: tableData,
        startY: 25,
      });

      if (catRef.current == 'todas') {
        catRef.current = 'GENERAL';
      }
  
      doc.save(`${tiempos[0].especial.nombre}-${catRef.current}-${eventName}.pdf`);
    };
  
    generatePdf();
  };

  // * TOAST
  const showToast = (message, type = "success") => {
    if (type === "success") {
      toast.success(message, {
        position: "top-right",
      });
    } else if (type === "error") {
      toast.error(message, {
        position: "top-right",
      });
    }
  };

  //* Funcion para abrir el Modal <Foto />
  const [isFotoModalOpen, setFotoModalOpen] = useState(false); // Modal de foto
  const [selectFoto, setSelectFoto] = useState(null); // para ver la foto
  const verFoto = async (e) => {
    // console.log("gaaaaaaaaaaaaaaaaaaa", e);
    // verifica que e sea dif de Null
    if (e) {
      setSelectFoto(e);
      setFotoModalOpen(true);
    }
  };

  const onSave = (e) => {
    // mutate();
    // console.log("xddd", e);
    
    onClose();
  };

  const loadingState = isLoading || swrData?.data.legth === 0 ? "loading" : "idle";
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();
  const refForm = useRef(null);

  const editar = (e) => {
    console.log(e);
    onOpen();
    setEdit(true);
    setId(e.id);
  };

  //* Funcion para abrir el Modal <Eliminar>
  const [isDel, setDel] = useState(false); // Modal de foto
  const [selectData, setSelectData] = useState(null);

  const eliminar = async (e) => {
    // console.log(e);
    setSelectData(e);
    setDel(true);
  };

  //* Funcion para eliminar el Registro (Depende del archivo Servicios)
  const delFicha = async (id) => {
    await TIemposService.delete(id);
    mutarList();
    setDel(false);
  };

  const renderCell = React.useCallback((row, columnKey, index, tiempos) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case "id":
        // return <p>{cellValue}</p>;
        // return <p className='text-lg font-extrabold'>{(index !== undefined && index !== null) ? index + 1 : '-'}</p>;

        return (
          <p
            className={`md:text-lg font-extrabold text-center ${index + 1 <= 3 ? "text-green-500" : ""}`}
          >
            {index !== undefined && index !== null ? index + 1 : "-"}
          </p>
        );
      case "car_num":
        return (
          // <p className="font-bold text-center text-red-500">
          //   {row.tripulacion.auto_num}
          // </p>
          <>
            <p className="font-bold text-center text-red-500">
              {row.tripulacion.auto_num}
            </p>
            <div className="flex items-center gap-2">
              
              {/* ICONOOOOOOOOOOO */}
              {/* <IoCarSportOutline size={"1.4em"} style={{ minWidth: "1.4em" }} /> */}
              <div>
                <p>{row.tripulacion.auto}</p>
                <p className="italic font-bold">{row.tripulacion.categoria}</p>
              </div>
            </div>
          </>
        );

      //* TRIPULACION
      case "tripulacion":
        return (
          <>
            <div className="flex items-center gap-2 mb-2">
              {/* <FaUserAstronaut size={"1.4em"} style={{ minWidth: "1.4em" }} /> */}
              {row.tripulacion.piloto.nombre} {row.tripulacion.piloto.apellidos}
            </div>

            <div className="flex items-center gap-2">
              {/* <FaUserAstronaut size={"1.4em"} style={{ minWidth: "1.4em" }} /> */}
              {row.tripulacion.navegante.nombre}{" "}
              {row.tripulacion.navegante.apellidos}
            </div>
          </>
        );

      case "hora_marcado":
        return (
          <>
            <p>{row.hora_marcado}</p>
            <p className="text-red-500">{row.penalizacion}</p>
          </>
        );

      //* AUTO
      case "auto":
        return (
          <>
            <div className="flex items-center gap-2">
              <IoCarSportOutline size={"1.4em"} style={{ minWidth: "1.4em" }} />
              <div>
                <p>{row.tripulacion.auto}</p>
                <p className="italic font-bold">{row.tripulacion.categoria}</p>
              </div>
            </div>
          </>
        );

      //* DIFERENCIAS
      case "diferencias":
        const firstTime = tiempos[0]?.hora_marcado;
        const prevTime = index > 0 ? tiempos[index - 1].hora_marcado : null;

        const diffWithFirst = calculateTimeDifference(
          firstTime,
          row.hora_marcado,
        );
        const diffWithPrev = prevTime
          ? calculateTimeDifference(prevTime, row.hora_marcado)
          : null;

        return (
          <>
            <div className="text-blue-500 ">{diffWithFirst}</div>
            {diffWithPrev && (
              <div className="text-purple-500">{diffWithPrev}</div>
            )}
          </>
        );

      // * Foto
      case "foto":
        return (
          <div>
            <Button
              variant="light"
              onClick={() => verFoto(row.tripulacion.foto_url)}
            >
              <Image
                radius="md"
                src={
                  row.tripulacion.foto_url != null
                    ? `${url}` + `${row.tripulacion.foto_url}`
                    : ""
                }
                alt="Prev Img"
                width={70}
                loading="lazy"
              />
            </Button>
          </div>
        );

      //* ACCIONES
      case "acciones":
        return (
          <div className="flex justify-center gap-2">
            <Button
              onPress={() => editar(row)}
              size="sm"
              color="warning"
              isIconOnly
              variant="ghost"
            >
              <PiPencilSimpleFill size="1.6em" />
            </Button>
            <Button
              onPress={() => eliminar(row)}
              size="sm"
              color="danger"
              isIconOnly
            >
              <BsTrash2Fill size="1.6em" />
            </Button>
          </div>
        );
      default:
        return cellValue;
    }
  }, []);

  return (
    <>
      <div className="flex flex-col gap-2 pb-2">
        <div className="flex items-end justify-between gap-3">
          {/* <span className="px-2 text-xl font-bold">{esp_title?.nombre}</span> */}
          {modo != "client" && (
            <div className="flex gap-3">
              <Button
                onPress={() => {
                  setEdit(false);
                  onOpen();
                }}
                color="primary"
              >
                <FaCirclePlus  size={"1.4em"} style={{ minWidth: "1.4em" }} />
                Añadir
              </Button>

              <Button
                onPress={() => abrirConf()}
                color="success"
                isIconOnly
              >
                <RxLapTimer size={"1.4em"} style={{ minWidth: "1.4em" }} />
              </Button>
              
              <Button
                onPress={() => pressPdf()}
                // color="success"
                isIconOnly
              >
                <FaFile size={"1.4em"} style={{ minWidth: "1.4em" }} />
              </Button>
              
              <Modal
                isOpen={isOpen}
                onOpenChange={onOpenChange}
                placement="center"
                scrollBehavior="outside"
              >
                <ModalContent>
                  {(onClose) => (
                    <>
                      <Form
                        save={onSave}
                        isEdit={edit}
                        id={id}
                        onClose={onClose}
                        ref={refForm}
                        idEvent={idEvent}
                        especial={selEsp}
                        showToast={showToast}
                      />
                    </>
                  )}
                </ModalContent>
              </Modal>
            </div>
          )}
        </div>

        {/* Filtrar por Especiales */}
        <div className="flex items-center justify-between gap-4">
          <Select
            label="Especial"
            size="sm"
            className="max-w-xs"
            key={key} // Para re-renderizarlo de nuevo
            defaultSelectedKeys={[set_selEsp]}
            onChange={(e) => handleSelEsp(e)}
          >
            {especiales?.map((esp) => (
              <SelectItem key={esp.id} value={esp.nombre}>
              {esp.nombre}
            </SelectItem>
            ))}
          </Select>

          <Select
            label="Categorías"
            size="sm"
            className="max-w-xs"
            defaultSelectedKeys={["todas"]}
            onChange={(e) => handleSelCategoria(e)}
          >
            <SelectItem key={"todas"} value={"todas"}>
              Todas
            </SelectItem>
            {categorias?.map((cat) => (
              <SelectItem key={cat.name} value={cat.name}>
                {cat.name}
              </SelectItem>
            ))}
          </Select>
        </div>

        {modo != "client" && (
          <div>
            <Input
              className="w-full"
              size="sm"
              placeholder="Buscar..."
              isClearable
              startContent={<CiSearch size="1.4em" />}
              defaultValue={search}
              onChange={(e) => handleSearch(e.target.value)}
              onClear={() => setSearch("")}
            />
          </div>
        )}
        
        {/* <div className="flex items-center justify-between">
          <span className="text-default-400 text-small">
            Total {swrData?.total}
          </span>
          <label className="flex items-center text-default-400 text-small">
            Filas por página
            <select
              className="bg-transparent outline-none text-default-400 text-small"
              onChange={(e) => {
                setRowPerPage(e.target.value);
              }}
            >
              <option value="5">5</option>
              <option value="10">10</option>
              <option value="15">15</option>
              <option value="20">20</option>
            </select>
          </label>
        </div> */}
      </div>
      <Table
        isStriped
        className="min-w-full text-xs border-collapse"
        aria-label="Tabla de tiempos por especial"
        // topContent={topContent}
      >
        <TableHeader columns={columns}>
          {(column) => (
            <TableColumn
              className="sm:text-tiny md:text-base"
              style={{
                padding: window.innerWidth < 640 ? '5px' : '15px' // Ejemplo: 5px para pantallas pequeñas, 10px para pantallas más grandes
              }}
              key={column.uid}
              align={
                column.uid === "acciones" ||
                column.uid === "especiales" ||
                column.uid === "foto"
                  ? "center"
                  : "start"
              }
            >
              {column.name}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          items={tiempos ?? []}
          loadingContent={<Spinner />}
          loadingState={loadingState}
          emptyContent={"Tiempos sin registrar"}
        >
          {tiempos?.map((item, index) => (
            <TableRow key={item?.id}>
              {(columnKey) => (
                <TableCell
                  className="text-tiny md:text-base" 
                  style={{
                    padding: window.innerWidth < 640 ? '2px' : '10px' // Ejemplo: 5px para pantallas pequeñas, 10px para pantallas más grandes
                  }}
                >
                  {renderCell(item, columnKey, index, tiempos)}
                </TableCell>
              )}
            </TableRow>
          ))}
        </TableBody>
      </Table>
      {/* <pre>{JSON.stringify(data?.data)}</pre> */}

      <Toaster />

      {/* Modal para Ver Foto */}
      <Foto
        isOpen={isFotoModalOpen}
        onOpenChange={setFotoModalOpen}
        datos={selectFoto}
      />

      {/* Modal Eliminar */}
      <Eliminar
        isOpen={isDel}
        onOpenChange={setDel}
        datos={selectData}
        delFicha={delFicha}
        onClose={onClose}
      />

      <ModalConfirm
        isOpen={isConf}
        onOpenChange={setConf}
        gen_salida={gen_salida}
      />

      {/* PDF */}
      {/* {dataForPdf && <Gen_Pdf dataForPdf={dataForPdf} onComplete={() => setDataForPdf(null)} />} */}
    </>
  );
}

export default TiemposTable;
