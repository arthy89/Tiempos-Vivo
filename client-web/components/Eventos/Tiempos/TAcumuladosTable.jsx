import {
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Spinner,
  getKeyValue,
  Pagination,
  Input,
  Button,
  useDisclosure,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Tooltip,
  Image,
  Select,
  SelectItem,
} from "@nextui-org/react";
import { FaUserAstronaut } from "react-icons/fa";
import { IoCarSportOutline } from "react-icons/io5";
import { FaFile } from "react-icons/fa6";
import { useRouter } from "next/navigation";
import React, { useMemo, useRef, useState, useEffect } from "react";
import CategoriaService from "@/services/CategoriaService";
import EventoService from "@/services/EventoService";
import { columns as allColumns } from "./columns2";
import Foto from "@/components/Modals/Foto";
import jsPDF from "jspdf";
import "jspdf-autotable";

function TAcumuladosTable({ idEvent, categorias, modo, evento }) {
  // console.log('IDEVENT desde TIEMPOS', idEvent);
  // console.log('CATS DESDE', categorias);
  // console.log('EVENTOOOOOOO', evento);
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [selCat, setSelCat] = useState("todas");

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(200);

  const tiemposRef = useRef(null);
  const dataRef = useRef(null);
  const catRef = useRef(null);

  const { data, isLoading } = EventoService.getTimes({
    event_id: idEvent,
    categoria: selCat,
  });

  const [tiempos, setTiempos] = useState(null);

  useEffect(() => {
    if (data && data?.tiempos_acumulados) {
      setTiempos(data.tiempos_acumulados);
      tiemposRef.current = data.tiempos_acumulados;
      // console.log(tiempos)
    }
    dataRef.current = data;
  }, [tiempos, data]);

  // console.log('tiempo', tiempos);
  // console.log('NAMEEEEEEEE', evento);

  // console.log('DATAAAAAAAAA', data);

  const pages = useMemo(() => {
    return data?.last_page;
  }, [data?.total, rowPerPage]);

  // Filtrar las columnas basadas en el valor de `modo`
  const columns = useMemo(() => {
    if (modo !== "client") {
      return allColumns.filter((column) => column.uid !== "foto");
    }
    return allColumns;
  }, [modo]);

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

  const handleSelCategoria = (e) => {
    setSelCat(e.target.value);
    catRef.current = e.target.value;
  };

  const calculateTimeDifference = (startTime, endTime) => {
    // Función para parsear el tiempo en formato HH:MM:SS.m a horas, minutos, segundos y milisegundos
    const parseTime = (timeString) => {
        const [timePart, millisPart] = timeString.split('.'); // Separar la parte de milisegundos
        const [hours, minutes, seconds] = timePart.split(':').map(Number); // Separar horas, minutos y segundos
        const milliseconds = millisPart ? parseInt(millisPart.padEnd(3, '0')) : 0; // Completar con ceros si es necesario
        return { hours, minutes, seconds, milliseconds };
    };

    const start = parseTime(startTime);
    const end = parseTime(endTime);

    // Convertir todo a milisegundos para hacer la resta
    const startInMillis = 
        (start.hours * 3600000) + 
        (start.minutes * 60000) + 
        (start.seconds * 1000) + 
        start.milliseconds;

    const endInMillis = 
        (end.hours * 3600000) + 
        (end.minutes * 60000) + 
        (end.seconds * 1000) + 
        end.milliseconds;

    // Si el tiempo final es menor que el inicial, retornar "-"
    if (endInMillis < startInMillis) {
        return '-';
    }

    const diffInMillis = endInMillis - startInMillis;

    // Convertir la diferencia a horas, minutos, segundos y milisegundos
    const hoursDiff = Math.floor(diffInMillis / (3600000));
    const minutesDiff = Math.floor((diffInMillis % (3600000)) / 60000);
    const secondsDiff = Math.floor((diffInMillis % 60000) / 1000);
    const millisDiff = Math.floor((diffInMillis % 1000) / 100); // Obtener solo el primer dígito de los milisegundos

    // Formatear el tiempo en formato HH:MM:SS.m
    return `+ ${hoursDiff > 0 ? hoursDiff + ':' : ''}${minutesDiff < 10 && hoursDiff > 0 ? '0' + minutesDiff : minutesDiff}:${secondsDiff < 10 ? '0' : ''}${secondsDiff}.${millisDiff}`;
  };

  // * Para el PDF
  const pressPdf = () => {
    // console.log("Tiempos desde Ref:", tiemposRef.current);
    // console.log("Data desde Ref:", dataRef.current);

    let tiempos = tiemposRef.current;
    
    const doc = new jsPDF();
    doc.setFontSize(18);
    doc.text(`${evento.name}`, 14, 20);

    doc.setFontSize(15); // Tamaño del título principal
    doc.text(`Tabla General`, 14, 26);
    
    doc.setFontSize(10); // Tamaño del título principal
    doc.text(`EC: Especiales Completados`, 14, 30);

    const columns = ["Nº", "COCHE", "PILOTO", "CAT", "EC", "PENA", "TIEMPO"];

    const tableData = tiempos.map((tiempo, index) => [
      index + 1,
      tiempo.tripulacion.auto_num,
      `${tiempo.tripulacion.piloto.nombre} ${tiempo.tripulacion.piloto.apellidos}`,
      tiempo.tripulacion.categoria,
      tiempo.num_especiales,
      tiempo.penalizacion_acumulada,
      tiempo.tiempo_acumulado,
    ]);

    doc.autoTable({
      head: [columns],
      body: tableData,
      startY: 35,
    });

    if (catRef.current == 'todas') {
      catRef.current = 'GENERAL';
    }

    doc.save(`Acumulado-${catRef.current || "GENERAL"}-${evento.name}.pdf`);
  };

  const loadingState = isLoading || data?.legth === 0 ? "loading" : "idle";
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();

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
          <>
            <p className="font-bold text-center text-red-500">
              {row.tripulacion.auto_num}
            </p>
            <div className="flex items-center gap-2">
              
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
      
      case "tiempo_acumulado":
          return (
            <>
              <p>{row.tiempo_acumulado}</p>
              <p className="text-red-500">{row.penalizacion_acumulada != "00:00:00" ? row.penalizacion_acumulada : ""}</p>
            </>
          );

      //* DIFERENCIAS
      case "diferencias":
        const firstTime = tiempos[0]?.tiempo_acumulado;
        const prevTime = index > 0 ? tiempos[index - 1].tiempo_acumulado : null;

        const diffWithFirst = calculateTimeDifference(
          firstTime,
          row.tiempo_acumulado,
        );
        const diffWithPrev = prevTime
          ? calculateTimeDifference(prevTime, row.tiempo_acumulado)
          : null;

        return (
          <>
            <div className="text-blue-500">{diffWithFirst}</div>
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
      default:
        return cellValue;
    }
  }, []);

  return (
    <>
      <div className="flex flex-col gap-4 px-1 pb-2">
        <div className="flex items-end justify-between">
          <span className="text-lg font-bold">Tabla Acumulada</span>
        </div>

        {/* Filtrar por Categorias */}
        <div className="flex items-center justify-between gap-4">
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
            {categorias.map((cat) => (
              <SelectItem key={cat.name} value={cat.name}>
                {cat.name}
              </SelectItem>
            ))}
          </Select>

          {modo != "client" && (
            <Button
              onPress={pressPdf}
              color="success"
            >
              <FaFile size={"1.4em"} style={{ minWidth: "1.4em" }} />
              PDF
            </Button>
          )}

        </div>
      </div>
      <Table
        isStriped
        aria-label="Tabla de tiempos acumulados"
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
                column.uid === "num_especiales" ||
                column.uid === "foto"
                  ? "center"
                  : "start"
              }
            >
              {column.uid === "auto" ? (
                <>
                  Vehículo
                  <br />
                  CAT
                </>
              ) : (
                column.name
              )}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          items={tiempos ?? []}
          loadingContent={<Spinner />}
          loadingState={loadingState}
          emptyContent={"Sin Tiempos"}
        >
          {tiempos?.map((item, index) => (
            <TableRow key={item?.tripulacion.id}>
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

      {/* Modal para Ver Foto */}
      <Foto
        isOpen={isFotoModalOpen}
        onOpenChange={setFotoModalOpen}
        datos={selectFoto}
      />
    </>
  );
}

export default TAcumuladosTable;
