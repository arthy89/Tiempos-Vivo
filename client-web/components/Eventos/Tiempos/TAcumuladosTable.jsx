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
  Chip,
} from "@nextui-org/react";
import { FaUserAstronaut } from "react-icons/fa";
import { CiSearch } from "react-icons/ci";
import { IoCarSportOutline } from "react-icons/io5";
import { FaFile } from "react-icons/fa6";
import { FaFileLines } from "react-icons/fa6";
import { useRouter } from "next/navigation";
import React, { useMemo, useRef, useState, useEffect } from "react";
import CategoriaService from "@/services/CategoriaService";
import EventoService from "@/services/EventoService";
import { columns as allColumns } from "./columns2";
import Foto from "@/components/Modals/Foto";
import jsPDF from "jspdf";
import "jspdf-autotable";

import { spacemonoFun } from "@/public/fonts/spacemono-normal";
import { typewriterFun } from "@/public/fonts/typewriter-normal";
import { monoidFun } from "@/public/fonts/monoid-normal";
import { sfmonoFun } from "@/public/fonts/sfmono-normal";
import { sfproFun } from "@/public/fonts/sf_pro-normal";
import { lektonFun } from "@/public/fonts/lekton-normal";

jsPDF.API.events.push(["addFonts", spacemonoFun]);
jsPDF.API.events.push(["addFonts", typewriterFun]);
jsPDF.API.events.push(["addFonts", monoidFun]);
jsPDF.API.events.push(["addFonts", sfmonoFun]);
jsPDF.API.events.push(["addFonts", sfproFun]);
jsPDF.API.events.push(["addFonts", lektonFun]);

function TAcumuladosTable({ idEvent, categorias, modo, evento }) {
  // console.log('IDEVENT desde TIEMPOS', idEvent);
  // console.log('CATS DESDE', categorias);
  // console.log('EVENTOOOOOOO', evento);
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [selCat, setSelCat] = useState("todas");

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(500);
  const [search, setSearch] = useState("");

  const tiemposRef = useRef(null);
  const dataRef = useRef(null);
  const catRef = useRef(null);

  const { data, isLoading } = EventoService.getTimes({
    event_id: idEvent,
    categoria: selCat,
    search,
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

  const handleSearch = (value) => {
    setSearch(value);
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

    const columns = ["Nº", "COCHE/CAT", "PILOTO/NAVEGANTE", "EC", "TIEMPO", "ESTADO"];

    const tableData = tiempos.map((tiempo, index) => [
      index + 1,
      `${tiempo.tripulacion.auto_num} | ${tiempo.tripulacion.categoria}`,
      `${tiempo.tripulacion.piloto.nombre} ${tiempo.tripulacion.piloto.apellidos}\n${tiempo.tripulacion.navegante.nombre} ${tiempo.tripulacion.navegante.apellidos}`,
      tiempo.num_especiales,
      tiempo.penalizacion_acumulada !== "00:00:00"
        ? `${tiempo.tiempo_acumulado}\n${tiempo.penalizacion_acumulada}` // Evalua si existe una Penalizacion, sino solo muestra el tiempo acumulado
        : `${tiempo.tiempo_acumulado}`,
      tiempo.tripulacion.estado == 'EN_CARRERA' 
        ? 'Finalizó'
        : tiempo.tripulacion.estado === "ABANDONO"
        ? "Abandono"
        : "Descalificado",
    ]);

    doc.autoTable({
      head: [columns],
      body: tableData,
      startY: 35,
      styles: {
        valign: 'middle',
      },
    });

    if (catRef.current == 'todas') {
      catRef.current = 'GENERAL';
    }

    doc.save(`Acumulado-${catRef.current || "GENERAL"}-${evento.name}.pdf`);
  };

  // !! Consulta para Tiempos Consolidados
  // const [taList, setTaList] = useState(null);
  const taList = useRef(null);
  const ListarTiemposConsolidado = async () => {
    try {
      const res = await EventoService.getConsolidados({
        params: { event_id: idEvent }
      });
      // setTaList(res);
      taList.current = res;
      // console.log('REEEES', res);
    } catch (e) {
      console.log("error!!!!!!!", e)
    }
  }

  const pressPdfConsolidado = async () => {
    await ListarTiemposConsolidado();

    const evento = taList.current.evento;
    const tiempos = taList.current.tiempos_consolidado;

    
    const doc = new jsPDF({
        orientation: "landscape",
        unit: "mm",
        format: "a4",
    });

    doc.setFont("sfpro");

    // Título del evento
    doc.setFontSize(15);
    doc.text(`${evento[0].name}`, 14, 15);

    // Subtítulo
    doc.setFontSize(12);
    doc.text(`Tiempos Consolidados`, 14, 20);
    
    // doc.setFontSize(8);
    // doc.text(`P: Penalizacion | P.A: Penalización Acumulada`, 14, 23);

    // Obtener dinámicamente los nombres de los especiales
    const especialesHeaders = evento[0].especiales.map((e) => e.nombre); // PE1, PE2, PE3, etc.

    // Definir cabecera con combinaciones correctas
    const headRows = [
        [
            { content: "N", rowSpan: 2, styles: { halign: "center" } },
            { content: "TRIPULACIÓN", rowSpan: 2, styles: { halign: "center" } },
            ...especialesHeaders.map((especial) => ({
                content: especial,
                colSpan: 3,
                styles: { halign: "center" },
            })),
            { content: "T. ACUMULADO", rowSpan: 2, styles: { halign: "center" } },
            { content: "ESTADO", rowSpan: 2, styles: { halign: "center" } },
        ],
        [
            ...Array(0).fill(""), // Espacio para N y TRIPULACIÓN
            ...especialesHeaders.flatMap(() => [
                { content: "Salida", styles: { halign: "center" } },
                { content: "Llegada", styles: { halign: "center" } },
                { content: "Tiempo", styles: { halign: "center" } },
            ]),
            "", // Espacio para ACUMULADO
            "", // Espacio para ESTADO
        ],
    ];

    // Construcción de datos correctamente alineados
    const tableData = tiempos.map((tiempo, index) => {
        const tripulacion = `${tiempo.tripulacion.auto_num} | ${tiempo.tripulacion.categoria}\n`;

        const especialesData = evento[0].especiales.map((especial) => {
            const especialInfo = tiempo.especiales.find((e) => e.nombre === especial.nombre);
            return especialInfo
                ? [
                    `${especialInfo.hora_salida || "--:--:--"}`,
                    `${especialInfo.hora_llegada || "--:--:--"}`,
                    especialInfo.penalizacion !== "00:00:00"
                      ? `${especialInfo.hora_marcado || "--:--:--"}\n${especialInfo.penalizacion}`
                      : `${especialInfo.hora_marcado || "--:--:--"}`,
                ]
                : ["-", "-", "-"];
        }).flat();

        const tiempoAcumulado = `${tiempo.tiempo_acumulado || "--:--:--"}${
            tiempo.penalizacion_acumulada !== "00:00:00"
              ? `\n${tiempo.penalizacion_acumulada}`
              : ""
        }`;

        const estado =
          tiempo.tripulacion.estado === "EN_CARRERA"
            ? "FINALIZÓ"
            : tiempo.tripulacion.estado;

        return [
            index + 1,
            tripulacion,
            ...especialesData,
            tiempoAcumulado,
            estado, // NUEVA COLUMNA
        ];
    });

    // Generar tabla con cabecera corregida
    doc.autoTable({
      startY: 23,
      head: headRows,
      body: tableData,
      styles: {
          valign: 'middle',
          fontSize: 5,
          cellPadding: 2,
          // font: "lekton",
          textColor: [0, 0, 0],
      },
      headStyles: {
          fillColor: [40, 40, 40],
          textColor: [255, 255, 255],
          // font: "spacemono",
          halign: "center",
      },
      alternateRowStyles: {
          fillColor: [245, 245, 245], // Alternar colores de filas
      },
      didDrawCell: function (data) {
        // Verificar si es una celda de datos (no cabecera)
        if (data.section === "body") {
            let doc = data.doc;
            let cell = data.cell;
            
            // Definir color de la línea (negro)
            doc.setDrawColor(0, 0, 0); 
            doc.setLineWidth(0.3);
            
            // Dibujar línea derecha de cada celda (columna)
            doc.line(cell.x + cell.width, cell.y, cell.x + cell.width, cell.y + cell.height);
        }
      },
      didParseCell: function (data) {
        if (data.section === "body") {
          const cellValue = data.cell.raw || "";

          // Aplicar negrita a la última columna (T. Acumulado)
          if (data.column.index === tableData[0].length - 2) {
            data.cell.styles.fontStyle = "bold";
          }

          // Verificar si la celda pertenece a la columna de 'hora_marcado'
          if (evento[0].especiales.some((especial, index) => {
            // Calcular la posición de 'hora_marcado' en la fila
            const columnPosition = 2 + (index * 3) + 2; // [ Salida, Llegada, Marcado ]
            return data.column.index === columnPosition && /^\d{2}:\d{2}:\d{2}/.test(cellValue);
          })) {
            data.cell.styles.fontStyle = "bold"; // Aplicar negrita SOLO a 'hora_marcado'
          }

          // Aplicar color rojo a penalizaciones
          if (/\d{2}:\d{2}:\d{2}/.test(cellValue) && cellValue.includes("\n")) {
            const lines = cellValue.split("\n");
            const lastLine = lines[lines.length - 1]; // Última línea (puede ser penalización)

            if (lastLine !== "00:00:00") {
              data.cell.styles.textColor = [255, 0, 0]; // Rojo
            }
          }
        }
      },
    });

    // Guardar el PDF
    doc.save(`Consolidado-${evento[0].name}.pdf`);
  };

  // Estado de Carga
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

        if (row.tripulacion.estado === 'ABANDONO') {
          return (<Chip variant="flat" size="sm" color="danger">Abandono</Chip>);
        }
        
        if (row.tripulacion.estado === 'DESCALIFICADO') {
          return (<Chip variant="flat" size="sm" color="default">Descalificado</Chip>);
        }

        if (row.tripulacion.estado === 'EN_CARRERA') {
          return (
            <>
              <div className="text-blue-500">{diffWithFirst}</div>
              {diffWithPrev && (
                <div className="text-purple-500">{diffWithPrev}</div>
              )}
            </>
          );
        }

      // * Foto
      case "foto":
        return (
          <div>
            <Button
              variant="light"
              onPress={() => verFoto(row.tripulacion.foto_url)}
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
      <div className="flex flex-col gap-2 px-1 pb-2">
        <div className="flex items-end justify-between">
          <span className="text-lg font-bold">Tabla Acumulada</span>
        </div>

        {/* Filtrar por Categorias */}
        <div className="flex items-center gap-2">
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
            <>
            <Tooltip color='success' content="PDF - Acumulado">
              <Button
                onPress={pressPdf}
                // color="success"
                isIconOnly
              >
                <FaFile size={"1.4em"} style={{ minWidth: "1.4em" }} />
              </Button>
            </Tooltip>
              
            <Tooltip color='danger' content="PDF - Consolidado">
              <Button
                onPress={pressPdfConsolidado}
                color="danger"
                isIconOnly
              >
                <FaFileLines size={"1.4em"} style={{ minWidth: "1.4em" }} />
              </Button>
            </Tooltip>
            </>
          )}

        </div>

        {/*! BUSQUEDAAAAAAAAAAA  */}
        {/* <div>
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
        </div> */}
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
