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
import { useRouter } from "next/navigation";
import {
  MdAutoFixHigh,
  MdEdit,
  MdDeleteForever,
  MdRemoveRedEye,
} from "react-icons/md";
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
  const [rowPerPage, setRowPerPage] = useState(100);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);

  const { data, mutate, isLoading } = TripulacionService.getData({
    page,
    rowsPerPage: rowPerPage,
    // order_by: '-id',
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
    onClose();
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
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();
  const refForm = useRef(null);

  const topContent = React.useMemo(() => {
    return (
      <div className="flex flex-col gap-4">
        <div className="flex items-end justify-between gap-3">
          <span className="text-xl font-bold">Lista de Tripulaciones</span>
          {modo != "client" && (
            <div className="flex gap-3">
              <Button
                onPress={() => {
                  setEdit(false);
                  onOpen();
                }}
                color="primary"
                endContent={<MdAutoFixHigh size="1.4em" />}
              >
                Añadir
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
                      <ModalHeader className="flex flex-col gap-1">
                        {edit ? "Editar Tripulación" : "Agregar Tripulación"}
                      </ModalHeader>

                      <div className="flex flex-col justify-center w-full">
                        <Tabs
                          aria-label="Options"
                          className="flex justify-center"
                        >
                          <Tab key="tripulacion" title="Tripulación">
                            <TripulacionForm
                              save={onSave}
                              isEdit={edit}
                              id={id}
                              onClose={onClose}
                              ref={refForm}
                              idEvent={idEvent}
                            />
                          </Tab>
                          <Tab key="conductor" title="Nuevo Conductor">
                            <ConductorForm />
                          </Tab>
                        </Tabs>
                      </div>
                    </>
                  )}
                </ModalContent>
              </Modal>
            </div>
          )}
        </div>
        <div className="flex items-center justify-between">
          <span className="text-default-400 text-small">
            Total {data?.total}
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
        </div>
      </div>
    );
  }, [rowPerPage, data?.total, isOpen]);

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
            <Tooltip content="Editar">
              <span
                onClick={() => editar(row)}
                role="button" // Añadimos rol de botón para accesibilidad
                tabIndex={0} // Permitimos la navegación con teclado
                onKeyPress={(e) => {
                  if (e.key === 'Enter' || e.key === ' ') {
                    editar(row); // Ejecuta la acción al presionar 'Enter' o 'Espacio'
                  }
                }}
                className="text-lg cursor-pointer text-default-400 active:opacity-50"
              >
                <MdEdit size="1.4em" />
              </span>
            </Tooltip>
            <Tooltip color="danger" content="Eliminar">
              <span
                onClick={() => eliminar(row)}
                role="button" // Añadir el rol de botón
                tabIndex={0}  // Permitir la navegación por teclado
                onKeyPress={(e) => {
                  if (e.key === 'Enter' || e.key === ' ') {
                    eliminar(row); // Ejecuta la acción al presionar 'Enter' o 'Espacio'
                  }
                }}
                className="text-lg cursor-pointer text-danger active:opacity-50"
              >
                <MdDeleteForever size="1.4em" />
              </span>
            </Tooltip>
          </div>
        );
      default:
        return cellValue;
    }
  }, []);

  return (
    <>
      <Table
        aria-label="Example static collection table"
        topContent={topContent}
        bottomContent={
          pages > 0 ? (
            <div className="flex justify-center w-full">
              <Pagination
                isCompact
                showControls
                showShadow
                color="primary"
                page={page}
                total={pages}
                onChange={(page) => setPage(page)}
              />
            </div>
          ) : null
        }
      >
        <TableHeader columns={columns}>
          {(column) => (
            <TableColumn
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
                <TableCell>{renderCell(item, columnKey, index)}</TableCell>
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

      {/* Modal Eliminar */}
      <Eliminar
        isOpen={isDel}
        onOpenChange={setDel}
        datos={selectData}
        delFicha={delFicha}
        onClose={onClose}
      />
    </>
  );
}

export default TripulacionTable;
