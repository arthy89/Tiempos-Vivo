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
} from '@nextui-org/react';
import toast, { Toaster } from 'react-hot-toast';
import { FaUserAstronaut } from "react-icons/fa";
import { IoCarSportOutline } from "react-icons/io5";
import { useRouter } from "next/navigation";
import { MdAutoFixHigh, MdEdit, MdDeleteForever, MdRemoveRedEye  } from 'react-icons/md';
import React, { useMemo, useRef, useState, useEffect } from 'react';
import EspecialService from '@/services/EspecialService';
import CategoriaService from '@/services/CategoriaService';
import TIemposService from '@/services/TIemposService';
import { columns as allColumns } from './columns';
import Form from './form';
import Foto from '@/components/Modals/Foto';
import Eliminar from "@/components/Modals/Eliminar";

function TiemposTable({ idEvent, modo }) {
  // console.log('IDEVENT desde TIEMPOS', idEvent);
  const router = useRouter();

  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [selEsp, setSelEsp] = useState('');
  const [selCat, setSelCat] = useState('todas');

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(200);
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);

  // * Optener la lista de Especiales
  const { data: especiales } = EspecialService.getData({
    page: 1,
    rowPerPage: 20,
    event_id: idEvent,
    order_by: 'nombre',
  });

  // * Optener la lista de las Categorias
  const { data: categorias } = CategoriaService.getData({
    page: 1,
    rowsPerPage: 100,
    event_id: idEvent,
  });

  useEffect(() => {
    setSelEsp(especiales?.data[0].id);
    // console.log('ESSSSSSSSSSS', selEsp);f
  }, [especiales]);

  const { data, mutate, isLoading } = EspecialService.get({
    page: 1,
    rowsPerPage: 200,
    especial: selEsp,
    categoria: selCat,
  });

  // console.log('times', data)

  const [tiempos, setTiempos] = useState(null);
  useEffect(() => {
    if (data && data.data){
      setTiempos(data.data);
    }
    // console.log('TIEMPOS', tiempos);
  }, [tiempos, data]);

  const pages = useMemo(() => {
    return data?.last_page;
  }, [data?.total, rowPerPage]);

  // Filtrar las columnas basadas en el valor de `modo`
  const columns = useMemo(() => {
    if (modo === 'client') {
      return allColumns.filter(column => !['acciones', 'hora_salida', 'hora_llegada'].includes(column.uid));
    } else {
      return allColumns.filter(column => column.uid !== 'foto');
    }
  }, [modo]);

  const handleSelEsp = (e) => {
    setSelEsp(e.target.value)
  }

  const handleSelCategoria = (e) => {
    setSelCat(e.target.value)
  }

  const calculateTimeDifference = (startTime, endTime) => {
    const diff = new Date(`1970-01-01T${endTime}`) - new Date(`1970-01-01T${startTime}`);
    const hours = Math.floor(diff / (1000 * 60 * 60));  // Calculate hours
    const minutes = Math.floor((diff % (1000 * 60 * 60)) / 60000);  // Calculate minutes
    const seconds = ((diff % 60000) / 1000).toFixed(0);  // Calculate seconds

    // Return format: HH:MM:SS or MM:SS when no hours involved
    return `+ ${hours > 0 ? hours + ':' : ''}${minutes < 10 && hours > 0 ? '0' + minutes : minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
  };

  // * TOAST
  const showToast = (message, type = 'success') => {
    if (type === 'success') {
      toast.success(message, {
        position: 'top-right',
      });
    } else if (type === 'error') {
      toast.error(message, {
        position: 'top-right',
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

  const onSave = () => {
    mutate();
    onClose();
  };

  const loadingState = isLoading || data?.data.legth === 0 ? 'loading' : 'idle';
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();
  const refForm = useRef(null);

  const topContent = React.useMemo(() => {
    return (
      <div className='flex flex-col gap-4'>
        <div className='flex items-end justify-between gap-3'>
          <span className='text-xl font-bold'>Tabla de Tiempos</span>
          {modo != 'client' && (
            <div className='flex gap-3'>
              <Button
                onPress={() => {
                  setEdit(false);
                  onOpen();
                }}
                color='primary'
                endContent={<MdAutoFixHigh size='1.4em' />}
              >
                Añadir
              </Button>
              <Modal
                isOpen={isOpen}
                onOpenChange={onOpenChange}
                placement='center'
                scrollBehavior='outside'
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
            label='Especial'
            size='sm'
            className='max-w-xs'
            defaultSelectedKeys={[selEsp]}
            onChange={(e) => handleSelEsp(e)}
          >
            {especiales?.data?.length > 0 ? (
              especiales.data.map((esp) => (
                <SelectItem key={esp.id} value={esp.nombre}>
                  {esp.nombre}
                </SelectItem>
              ))
            ) : (
              <SelectItem value="" disabled>
                Cargando...
              </SelectItem>
            )}
          </Select>

          <Select
            label='Categorías'
            size='sm'
            className='max-w-xs'
            defaultSelectedKeys={["todas"]}
            onChange={(e) => handleSelCategoria(e)}
          >
            <SelectItem key={'todas'} value={'todas'}>
              Todas
            </SelectItem>
            {categorias?.data.map((cat) => (
              <SelectItem key={cat.name} value={cat.name}>
                {cat.name}
              </SelectItem>
            ))}
          </Select>
        </div>
        <div className='flex items-center justify-between'>
          <span className='text-default-400 text-small'>
            Total {data?.total}
          </span>
          <label className='flex items-center text-default-400 text-small'>
            Filas por página
            <select
              className='bg-transparent outline-none text-default-400 text-small'
              onChange={(e) => {
                setRowPerPage(e.target.value);
              }}
            >
              <option value='5'>5</option>
              <option value='10'>10</option>
              <option value='15'>15</option>
              <option value='20'>20</option>
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
    await TIemposService.delete(id);
    mutate();
    setDel(false);
  };

  const renderCell = React.useCallback((row, columnKey, index, tiempos) => {
    const cellValue = row[columnKey];

    switch (columnKey) {
      case 'id':
        // return <p>{cellValue}</p>;
        // return <p className='text-lg font-extrabold'>{(index !== undefined && index !== null) ? index + 1 : '-'}</p>;

        return (
          <p className={`text-lg font-extrabold text-center ${index + 1 <= 3 ? 'text-green-500' : ''}`}>
            {(index !== undefined && index !== null) ? index + 1 : '-'}
          </p>
        );
      case 'car_num':
        return <p className='font-bold text-center text-red-500'>{row.tripulacion.auto_num}</p>;

      //* TRIPULACION 
      case 'tripulacion':
        return (
          <>
            <div className='flex items-center gap-2 mb-2'>
              <FaUserAstronaut size={'1.4em'} style={{ minWidth: '1.4em' }} /> 
              {row.tripulacion.piloto.nombre} {row.tripulacion.piloto.apellidos}
            </div>
            
            <div className='flex items-center gap-2'>
              <FaUserAstronaut size={'1.4em'} style={{ minWidth: '1.4em' }} /> 
              {row.tripulacion.navegante.nombre} {row.tripulacion.navegante.apellidos}
            </div>
          </>
        );
      
      //* AUTO
      case 'auto':
        return (
          <>
            <div className='flex items-center gap-2'>
              <IoCarSportOutline size={'1.4em'} style={{ minWidth: '1.4em' }} /> 
              <div>
                <p>{row.tripulacion.auto}</p>
                <p className='italic font-bold'>{row.tripulacion.categoria}</p>
              </div>
            </div>
          </>
        );

      //* DIFERENCIAS
      case 'diferencias':
        const firstTime = tiempos[0]?.hora_marcado;
        const prevTime = index > 0 ? tiempos[index - 1].hora_marcado : null;

        const diffWithFirst = calculateTimeDifference(firstTime, row.hora_marcado);
        const diffWithPrev = prevTime ? calculateTimeDifference(prevTime, row.hora_marcado) : null;

        return (
          <>
            <div className="text-blue-500">{diffWithFirst}</div>
            {diffWithPrev && <div className="text-purple-500">{diffWithPrev}</div>}
          </>
        );

      // * Foto
      case 'foto':
        return (
          <div>
            <Button variant="light" onClick={() => verFoto(row.tripulacion.foto_url)}>
              <Image
                radius="md"
                src={row.tripulacion.foto_url != null ? `${url}`+`${row.tripulacion.foto_url}` : ''}
                alt="Prev Img"
                width={70}
                loading='lazy'
              />  
            </Button>
          </div>
        );

      //* ACCIONES
      case 'acciones':
        return (
          <div className='flex justify-center gap-2'>
            <Tooltip content='Editar'>
              <span
                onClick={() => editar(row)}
                className='text-lg cursor-pointer text-default-400 active:opacity-50'
              >
                <MdEdit size='1.4em' />
              </span>
            </Tooltip>
            <Tooltip color='danger' content='Eliminar'>
              <span
                onClick={() => eliminar(row)}
                className='text-lg cursor-pointer text-danger active:opacity-50'
              >
                <MdDeleteForever size='1.4em' />
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
        aria-label='Example static collection table'
        topContent={topContent}
        bottomContent={
          pages > 0 ? (
            <div className='flex justify-center w-full'>
              <Pagination
                isCompact
                showControls
                showShadow
                color='primary'
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
              align={column.uid === 'acciones' || column.uid === 'especiales' || column.uid === 'foto' ? 'center' : 'start'}
            >
              {column.name}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          items={tiempos ?? []}
          loadingContent={<Spinner />}
          loadingState={loadingState}
          emptyContent={'Tiempos sin registrar'}
        >
          {tiempos?.map((item, index) => (
            <TableRow key={item?.id}>
              {(columnKey) => (
                <TableCell>{renderCell(item, columnKey, index, tiempos)}</TableCell>
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
    </>
  )
}

export default TiemposTable