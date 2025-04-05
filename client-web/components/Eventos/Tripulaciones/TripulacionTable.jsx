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
  Tabs,
  Tab,
} from "@nextui-org/react";
import toast, { Toaster } from "react-hot-toast";
import Toast from '@/components/Toast/Toast';
import { useRouter } from "next/navigation";
import { GiFullMotorcycleHelmet } from "react-icons/gi";
import { FaCirclePlus } from "react-icons/fa6";
import { PiPencilSimpleFill } from "react-icons/pi";
import { BsTrash2Fill } from "react-icons/bs";
import React, { useMemo, useRef, useState } from "react";
import TripulacionService from "@/services/TripulacionService";
import { columns as allColumns } from "./columns";
import TripulacionForm from "./form";
import ConductorForm from "./Conductor/form";
import Foto from "@/components/Modals/Foto";
import Eliminar from "@/components/Modals/Eliminar";

function TripulacionTable({ idEvent, modo }) {
  // console.log('IDEVENT', idEvent);
  console.log("MODOOOOOOO", modo);
  const router = useRouter();

  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(500);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);

  const { data, mutate, isLoading } = TripulacionService.getData({
    page,
    rowsPerPage: rowPerPage,
    order_by: 'categoria',
    event_id: idEvent,
  });
  console.log(data?.last_page);
  console.log(data);

  const pages = useMemo(() => {
    return data?.last_page;
  }, [data?.total, rowPerPage]);

  // Filtrar las columnas basadas en el valor de `modo`
  const columns = useMemo(() => {
    if (modo === "client") {
      return allColumns.filter((column) => column.uid !== "acciones"); // Excluye 'acciones'
    }
    return allColumns;
  }, [modo]);

  const onSave = () => {
    mutate();
    onCloseTrip();
    Toast("Tripulación Guardada", "success")
  };

  const onSavePilot = () => {
    onClosePilot();
    Toast("Piloto Guardado", "success")
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

  const loadingState = isLoading || data?.data.legth === 0 ? "loading" : "idle";
  const { isOpen: isOpenTrip, onOpen: onOpenTrip, onOpenChange: onOpenChangeTrip, onClose: onCloseTrip } = useDisclosure();
  const { isOpen: isOpenPilot, onOpen: onOpenPilot, onOpenChange: onOpenChangePilot, onClose: onClosePilot } = useDisclosure();
  
  const refForm = useRef(null);

  const editar = (e) => {
    console.log(e);
    onOpenTrip();
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
    await TripulacionService.delete(id);
    mutate();
    setDel(false);
  };

  const renderCell = React.useCallback((row, columnKey, index) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case "id":
        // return <p>{cellValue}</p>;
        return <p>{index !== undefined && index !== null ? index + 1 : "-"}</p>;

      case "piloto":
        return (
          <p>
            {row.piloto.nombre} {row.piloto.apellidos}
          </p>
        );
      case "navegante":
        return (
          <p>
            {row.navegante.nombre} {row.navegante.apellidos}
          </p>
        );
      case "auto":
        return (
          <div>
            <p className="font-bold">
              {row.categoria}
            </p>
            <p>
              {row.auto}
            </p>
          </div>
        );
      case "auto_num":
        return (
          <p className="text-center">
            {row.auto_num}
          </p>
        );
      case "foto_url":
        return (
          <div>
            <Button variant="light" onClick={() => verFoto(row.foto_url)}>
              <Image
                radius="md"
                src={row.foto_url != null ? `${url}` + `${row.foto_url}` : ""}
                alt="Prev Img"
                width={70}
                loading="lazy"
              />
            </Button>
          </div>
        );
      case "acciones":
        if (modo == "client") return "";
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
          <span className="px-3 text-xl font-bold">Lista de Tripulaciones</span>
          {modo != "client" && (
            <div className="flex gap-2 px-2">
              <Button
                onPress={() => {
                  setEdit(false);
                  onOpenTrip();
                }}
                color="primary"
              >
                <FaCirclePlus  size={"1.4em"} style={{ minWidth: "1.4em" }} />
                Añadir Tripulación
              </Button>
              <Button
                onPress={onOpenPilot}
                color="danger"
                variant="flat"
              >
                <GiFullMotorcycleHelmet  size={"1.4em"} style={{ minWidth: "1.4em" }} />
                Nuevo Piloto
              </Button>
            </div>
          )}
      </div>
    
      <Table
        className="px-2"
        isStriped
        aria-label="Tabla de tripulaciones"
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
                column.uid === "foto_url"
                  ? "center"
                  : "start"
              }
            >
              {column.name}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          // items={data?.data ?? []}
          loadingContent={<Spinner />}
          loadingState={loadingState}
        >
          {data?.data?.map((item, index) => (
            <TableRow key={item?.id}>
              {(columnKey) => (
                <TableCell 
                  className="text-tiny md:text-base" 
                  style={{
                    padding: window.innerWidth < 640 ? '2px' : '10px' // Ejemplo: 5px para pantallas pequeñas, 10px para pantallas más grandes
                  }}
                >{renderCell(item, columnKey, index)}</TableCell>
              )}
            </TableRow>
          ))}
        </TableBody>
      </Table>
      {/* <pre>{JSON.stringify(data?.data)}</pre> */}

      <Toaster />

      {/* Modales */}
      
      {/* Form Tripulacion */}
      <TripulacionForm
        isOpen={isOpenTrip}
        onOpenChange={onOpenChangeTrip}
        // onClose={onClose}
        save={onSave}
        isEdit={edit}
        id={id}
        ref={refForm}
        idEvent={idEvent}
      />

      {/* Form Piloto */}
      <ConductorForm 
        isOpen={isOpenPilot}
        onOpenChange={onOpenChangePilot}
        save={onSavePilot}
      />

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
        // onClose={onClose}
      />
    </>
  );
}

export default TripulacionTable;
