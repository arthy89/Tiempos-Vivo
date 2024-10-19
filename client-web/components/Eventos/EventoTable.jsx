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
import EventoService from "@/services/EventoService";
import { columns } from "./columns";
import Form from "./form";
import Foto from "@/components/Modals/Foto";
import Eliminar from "@/components/Modals/Eliminar";

function EventoTable() {
  const router = useRouter();

  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(5);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);

  const { data, mutate, isLoading } = EventoService.getData({
    page,
    rowsPerPage: rowPerPage,
    order_by: "-id",
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
        <div className="flex justify-between gap-3 items-end">
          <Input
            isClearable
            className="w-full sm:max-w-[44%]"
            placeholder="Search by name..."
          />
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
                    />
                  </>
                )}
              </ModalContent>
            </Modal>
          </div>
        </div>
        <div className="flex justify-between items-center">
          <span className="text-default-400 text-small">
            Total {data?.total} users
          </span>
          <label className="flex items-center text-default-400 text-small">
            Rows per page:
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

  const ver = (e) => {
    // console.log("XZDDDDDDDDDD", e);
    // router.push(`/admin/eventos/${e.id}`);
    const slug = `${e.id}-${e.name.replace(/\s+/g, "-").toLowerCase()}`;
    router.push(`/admin/eventos/${slug}`);
  };

  // const eliminar = async (e) => {
  //   console.log(e);
  //   await EventoService.delete(e.id);
  //   mutate();
  // };

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
    await EventoService.delete(id);
    mutate();
    setDel(false);
  };

  const renderCell = React.useCallback((row, columnKey, index) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case "id":
        // return <p>{cellValue}</p>;
        return <p>{index !== undefined && index !== null ? index + 1 : "-"}</p>;
      case "ubigeo":
        // const depNombre = departamento ? departamento.nombre : '-';
        // const provNombre = provincia ? provincia.nombre : '-';
        // return (
        //   <p>
        //     {nombre ? `${nombre} - ${provNombre} - ${depNombre}` : '-'}
        //   </p>
        // );

        const { nombre, distrito, provincia, departamento } = row.ubigeo || {};
        return (
          <p>
            {nombre} - {provincia} - {departamento}
          </p>
        );
      case "foto_url":
        return (
          <div>
            <Button variant="light" onClick={() => verFoto(row.foto_url)}>
              <Image
                radius="md"
                src={
                  row.foto_url != null
                    ? `${url}` + `${row.foto_url}`
                    : "/img/mono.png"
                }
                alt="Prev Img"
                width={70}
                loading="lazy"
              />
            </Button>
          </div>
        );
      // case 'tipo':
      //   return <p>{cellValue}</p>;
      case "acciones":
        return (
          <div className="relative flex items-center gap-2">
            <Tooltip content="Editar">
              <span
                onClick={() => editar(row)}
                className="text-lg text-default-400 cursor-pointer active:opacity-50"
              >
                <MdEdit size="1.4em" />
              </span>
            </Tooltip>

            <Tooltip content="Ver">
              <span
                onClick={() => ver(row)}
                className="text-lg text-default-400 cursor-pointer active:opacity-50"
              >
                <MdRemoveRedEye size="1.4em" />
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
              align={column.uid === "actions" ? "center" : "start"}
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

export default EventoTable;
