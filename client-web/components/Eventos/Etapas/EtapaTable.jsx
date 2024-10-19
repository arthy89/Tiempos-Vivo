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
} from "@nextui-org/react";
import { useRouter } from "next/navigation";
import {
  MdAutoFixHigh,
  MdEdit,
  MdDeleteForever,
  MdRemoveRedEye,
} from "react-icons/md";
import React, { useMemo, useRef, useState } from "react";
import EtapaService from "@/services/EtapaService";
import { columns } from "./columns";
import Form from "./form";
import Eliminar from "@/components/Modals/Eliminar";

function EtapaTable({ idEvent }) {
  // console.log('IDEVENT', idEvent);
  const router = useRouter();

  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(5);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);

  const { data, mutate, isLoading } = EtapaService.getData({
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

  const onSave = () => {
    // setMessage(childData);
    // console.log(childData);
    mutate();
    onClose();
  };

  const loadingState = isLoading || data?.data.legth === 0 ? "loading" : "idle";
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();
  const refForm = useRef(null);

  const topContent = React.useMemo(() => {
    return (
      <div className="flex flex-col gap-4">
        <div className="flex justify-between gap-3 items-end">
          {/* <Input
            isClearable
            className='w-full sm:max-w-[44%]'
            placeholder='Search by name...'
          /> */}
          <span className="text-xl font-bold">Lista de Etapas</span>
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
                    <Form
                      save={onSave}
                      isEdit={edit}
                      id={id}
                      onClose={onClose}
                      ref={refForm}
                      idEvent={idEvent}
                    />
                  </>
                )}
              </ModalContent>
            </Modal>
          </div>
        </div>
        <div className="flex justify-between items-center">
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
    await EtapaService.delete(id);
    mutate();
    setDel(false);
  };

  const renderCell = React.useCallback((row, columnKey, index) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case "id":
        // return <p>{cellValue}</p>;
        return <p>{index !== undefined && index !== null ? index + 1 : "-"}</p>;

      case "especiales":
        const especiales = row.especiales || [];
        return (
          // <>
          //   {especiales.length === 0 ? (
          //     <p>Sin Especiales</p>
          //   ) : (
          //     <ul>
          //       {especiales.map((especial, index) => (
          //         <li key={especial.id}>
          //           {especial.nombre} - {especial.lugar} ({especial.distancia} km)
          //         </li>
          //       ))}
          //     </ul>
          //   )}
          // </>
          <p>
            {especiales.length === 0 ? "Sin especiales" : especiales.length}
          </p>
        );
      case "acciones":
        return (
          <div className="flex justify-center gap-2">
            <Tooltip content="Editar">
              <span
                onClick={() => editar(row)}
                className="text-lg text-default-400 cursor-pointer active:opacity-50"
              >
                <MdEdit size="1.4em" />
              </span>
            </Tooltip>
            <Tooltip color="danger" content="Eliminar">
              <span
                onClick={() => eliminar(row)}
                className="text-lg text-danger cursor-pointer active:opacity-50"
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
            <div className="flex w-full justify-center">
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
                column.uid === "acciones" || column.uid === "especiales"
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

export default EtapaTable;
