import { useState, useEffect, useMemo, useRef, useCallback } from 'react';
import {
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Spinner,
  Button,
  Tooltip,
  TimeInput,
} from "@nextui-org/react";
import { FaCheckCircle } from "react-icons/fa";
import { FaFile } from "react-icons/fa6";
import { FaFileSignature } from "react-icons/fa6";
import { PiTimerFill } from "react-icons/pi";
import { FaChevronUp } from "react-icons/fa";
import { FaChevronDown } from "react-icons/fa";
import { PiFlagCheckeredFill } from "react-icons/pi";
import TripulacionService from "@/services/TripulacionService";
import ParametrosService from "@/services/ParametrosService";
import { columns as allColumns } from "./columns";
import Eliminar from "@/components/Modals/Eliminar";
import { CalendarDate, getLocalTimeZone, Time } from "@internationalized/date";
import Toast from '@/components/Toast/Toast';
import { Toaster } from "react-hot-toast";
import OPartidasService from '@/services/OPartidasService';
import jsPDF from "jspdf";
import "jspdf-autotable";

function OrdenPartida({ idEvent, eventName, modo }) {
  const [listPartida, setListPartida] = useState(null);
  const loadingState = listPartida === null ? "loading" : "idle";
  
  const ListarPartidasGet = async () => {
      try {
        const res = await OPartidasService.get({
          params: { event_id: idEvent }
        });
        // console.log("resssss", res);
        setListPartida(res);
      } catch (e) {
        console.log("error!!!!!!!", e)
      }
  }
  
  useEffect(() => {
    // console.log('estado inicial de list partida:', listPartida);
    ListarPartidasGet();
  }, [])
  
  // ? Para los parametros
  const [params, setParams] = useState({
    id: 0,
    event_id: 0,
    // set_especial: 0,
    hora_partida: "",
    intervalo: "",
    modo_partida: "",
  });

  const { data: paramsData, mutate: paramsMutate, isLoading: paramsIsLoading } = ParametrosService.get({
    event_id: idEvent,
  });
  // console.log(paramsData);
  useEffect(() => {
    if (paramsData) {
      setParams(paramsData);
    }
  }, [paramsData]);
  // console.log("parametros", params);

  const handleChange = (name, value) =>
    setParams({ ...params, [name]: value });

  // Todo| Funciones para los tiempos
  const parseTime = (timeString) => {
    const [hours, minutes, seconds] = timeString.split(":").map(Number);

    return new Time(hours, minutes, seconds);
  };

  const formatTime = (value) => {
    const hour = String(value.hour).padStart(2, "0");
    const minute = String(value.minute).padStart(2, "0");
    const second = String(value.second).padStart(2, "0");

    return `${hour}:${minute}:${second}`;
  };

  const updateParametros = async (updatedParams) => {
    if(updatedParams.hora_partida == null || updatedParams.intervalo == null) {
      return Toast("Error en Hora de Partida o Intérvalo", "error");
    }
    
    try {
      const res = await ParametrosService.put(updatedParams);
      ListarPartidasGet();
      Toast(res, "success");
    } catch (error) {
      console.log("Error al actualizar", error.response.data.error);
      Toast(error.response.data.error, "error");
    }
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    const action = event.nativeEvent.submitter?.value;
    setTimeout(() => {
      updateParametros({ ...params, modo_partida: action });
    }, 0);
  }

  // Filtrar las columnas basadas en el valor de `modo`
  const columns = useMemo(() => {
    if (modo === "client") {
      return allColumns.filter((column) => column.uid !== "acciones"); // Excluye 'acciones'
    }
    return allColumns;
  }, [modo]);

  const subir = (elemento) => {
    setListPartida((prevList) => {
      const index = prevList.findIndex((item) => item.id === elemento.id);
      if (index > 0) {
        const nuevaLista = [...prevList];
  
        // Guardar una referencia al elemento actual y al anterior
        const actual = { ...nuevaLista[index] }; // Copia del actual
        const anterior = { ...nuevaLista[index - 1] }; // Copia del anterior

        const tempHora = actual.hora_salida;
        actual.hora_salida = anterior.hora_salida;
        anterior.hora_salida = tempHora;

        // Intercambiar los objetos en la lista
        nuevaLista[index] = anterior;
        nuevaLista[index - 1] = actual;
  
        return nuevaLista;
      }
      return prevList;
    });
  };
  
  const bajar = (elemento) => {
    setListPartida((prevList) => {
      const index = prevList.findIndex((item) => item.id === elemento.id);
      if (index < prevList.length - 1) {
        const nuevaLista = [...prevList];
  
        // Guardar una referencia al elemento actual y al siguiente
        const actual = { ...nuevaLista[index] }; // Copia del actual
        const siguiente = { ...nuevaLista[index + 1] }; // Copia del siguiente
  
        // Intercambiar las horas de salida ANTES de reasignar los objetos
        const tempHora = actual.hora_salida;
        actual.hora_salida = siguiente.hora_salida;
        siguiente.hora_salida = tempHora;
  
        // Intercambiar los objetos en la lista
        nuevaLista[index] = siguiente;
        nuevaLista[index + 1] = actual;
  
        return nuevaLista;
      }
      return prevList;
    });
  };

  const guardar_lista = async () => {
    // console.log(listPartida);
    try {
      const res = await OPartidasService.put(listPartida);
      // console.log("Lista actualizada", res);
      // opdMutate();
      ListarPartidasGet();
      Toast(res, "success")
    } catch (error) {
      console.log("Error al actualizar", error);
      Toast("Error al Actualizar el Orden de Partida", "error")
    }
  }

  // * Para el PDF
  const pressPdf = () => {
    const generatePdf = () => {
      // console.log(listPartida);
      
      const doc = new jsPDF();
      doc.setFontSize(18);
      doc.text("Orden de Partida", 14, 20);
  
      const columns = [
        "Nº",
        "TRIPULACIÓN",
        "VEHÍCULO",
        "NUM",
        "HORA SALIDA"
      ];
  
      const tableData = listPartida.map((tiempo, index) => [
        index + 1,
        `${tiempo.tripulacion.piloto.nombre} ${tiempo.tripulacion.piloto.apellidos}\n` +
        `${tiempo.tripulacion.navegante.nombre} ${tiempo.tripulacion.navegante.apellidos}`,
        `${tiempo.tripulacion.categoria}\n` +
        `${tiempo.tripulacion.auto}`,
        tiempo.tripulacion.auto_num,
        tiempo.hora_salida,
      ]);
  
      doc.autoTable({
        head: [columns],
        body: tableData,
        startY: 25,
      });
  
      doc.save(`Orden_de_Partida_${eventName}.pdf`);
    };
  
    generatePdf();
  };

  const renderCell = useCallback((row, columnKey, index, totalRows) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case "id":
        // return <p>{cellValue}</p>;
        return <p>{index !== undefined && index !== null ? index + 1 : "-"}</p>;

      case "tripulacion":
        return (
          <span>
            
            <p>{row.tripulacion.piloto.nombre} {row.tripulacion.piloto.apellidos}</p>
            <p>{row.tripulacion.navegante.nombre} {row.tripulacion.navegante.apellidos}</p>
          </span>
        );
        
      case "vehiculo":
        return (
          <span>
            <p>{row.tripulacion.categoria}</p>
            <p>{row.tripulacion.auto}</p>
          </span>
        );

      case "num":
        return (
          <p>{row.tripulacion.auto_num}</p>
        );
      
      case "acciones":
        if (modo == "client") return "";
        return (
          <div className="flex justify-center gap-2">
            {/* Ocultar botón de subir si es el primer elemento */}
            {index > 0 && (
              <Button
                onPress={() => subir(row)}
                size="sm"
                color="success"
                isIconOnly
                radius="full"
              >
                <FaChevronUp size="1.6em" />
              </Button>
            )}
          
            {/* Ocultar botón de bajar si es el último elemento */}
            {index < totalRows - 1 && (
              <Button
                onPress={() => bajar(row)}
                size="sm"
                color="danger"
                isIconOnly
                radius="full"
              >
                <FaChevronDown size="1.6em" />
              </Button>
            )}
          </div>
        );
      default:
        return cellValue;
    }
  }, []);

  return (
    <>
      {modo != "client" && (
        <>
          <form onSubmit={handleSubmit}>
            <div className="flex flex-col gap-2 pb-2">
              <div className="flex items-end justify-between gap-3">
                <div className="flex gap-2">
                  <TimeInput 
                    label="Hora de Partida"
                    labelPlacement="outside"
                    variant="bordered"
                    hourCycle="24"
                    size='sm'
                    isRequired
                    value={parseTime(params.hora_partida ?? "")}
                    onChange={(time) => {
                      const pad = (num) => String(num).padStart(2, "0");
                      handleChange("hora_partida", `${pad(time.hour)}:${pad(time.minute)}:00`);
                    }}
                  />
                  
                  <TimeInput 
                    label="Intérvalo"
                    labelPlacement="outside"
                    variant="bordered"
                    hourCycle="24"
                    granularity="second"
                    size='sm'
                    isRequired
                    value={parseTime((params.intervalo ?? "00:00:00").split(".")[0])}
                    onChange={(time) => {
                      handleChange("intervalo", formatTime(time));
                    }}
                  />
                </div>
              </div>
            </div>

            <div className="flex flex-col gap-2 pb-2">
              <div className="flex items-end justify-between gap-3">
                <div className="flex gap-2">
                  {/* Botones */}
                  <Tooltip color='primary' content="Por Inscripciones">
                    <Button
                      type='submit'
                      color="primary"
                      name='action'
                      value='inscritos'
                      isIconOnly
                    >
                      <FaFileSignature size={"1.4em"} style={{ minWidth: "1.4em" }} />
                    </Button>
                  </Tooltip>

                  <Tooltip color='warning' content="Por Shakedown">
                    <Button
                      type='submit'
                      color="warning"
                      name='action'
                      value='shakedown'
                      isIconOnly
                    >
                      <PiFlagCheckeredFill size={"1.4em"} style={{ minWidth: "1.4em" }} />
                    </Button>
                  </Tooltip>
                  
                  <Tooltip color='danger' content="Por Tiempos Acumulado">
                    <Button
                      type='submit'
                      color="danger"
                      name='action'
                      value='acumulado'
                      isIconOnly
                    >
                      <PiTimerFill size={"1.4em"} style={{ minWidth: "1.4em" }} />
                    </Button>
                  </Tooltip>
                  
                  <Button
                    onPress={() => pressPdf()}
                    color="success"
                    // size='sm'
                  >
                    <FaFile size={"1.4em"} style={{ minWidth: "1.4em" }} />
                    PDF
                  </Button>
                </div>
              </div>
            </div>
          </form>
        </>        
      )}

      {modo == "client" && (
        <span className="px-2 text-xl font-bold">Orden de Partida</span>
      )}
      
      <Table
        isStriped
        aria-label="Tabla de Orden de Partida"
        bottomContent=
          {modo != "client" && (
            <Button
              onPress={() => guardar_lista()}
              color="success"
              // size='sm'
            >
              <FaCheckCircle size={"1.4em"} style={{ minWidth: "1.4em" }} />
              Guardar Cambios
            </Button>
          )}
        
      >
        <TableHeader columns={columns}>
          {(column) => (
            <TableColumn
              className="sm:text-tiny md:text-base"
              style={{
                padding: window.innerWidth < 640 ? '5px' : '15px' // Ejemplo: 5px para pantallas pequeñas, 10px para pantallas más grandes
              }}
              key={column.uid}
              align={ column.uid === "acciones" ? "center" : "start" }
            >
              {column.name}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          loadingContent={<Spinner />}
          loadingState={loadingState}
        >
          {listPartida?.map((item, index) => (
            <TableRow key={item?.id}>
              {(columnKey) => (
                <TableCell 
                  className="text-tiny md:text-base" 
                  style={{
                    padding: window.innerWidth < 640 ? '2px' : '10px' // Ejemplo: 5px para pantallas pequeñas, 10px para pantallas más grandes
                  }}
                >{renderCell(item, columnKey, index, listPartida.length)}</TableCell>
              )}
            </TableRow>
          ))}
        </TableBody>
      </Table>

      

      <Toaster />

      {/* Modal Eliminar */}
      {/* <Eliminar
        isOpen={isDel}
        onOpenChange={setDel}
        datos={selectData}
        delFicha={delFicha}
        onClose={onClose}
      /> */}
    </>
  )
}

export default OrdenPartida