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
import { FaUserAstronaut } from "react-icons/fa";
import { IoCarSportOutline } from "react-icons/io5";
import { useRouter } from "next/navigation";
import React, { useMemo, useRef, useState, useEffect } from 'react';
import CategoriaService from '@/services/CategoriaService';
import EventoService from '@/services/EventoService';
import { columns } from './columns2'

function TAcumuladosTable({ idEvent, categorias }) {
  // console.log('IDEVENT desde TIEMPOS', idEvent);
  // console.log('CATS DESDE', categorias);
  const [selCat, setSelCat] = useState('todas');

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(200);

  const { data, isLoading } = EventoService.getTimes({
    event_id: idEvent,
    categoria: selCat, 
  });

  const [tiempos, setTiempos] = useState(null);
  
  useEffect(() => {
    if (data && data?.tiempos_acumulados){
      setTiempos(data.tiempos_acumulados);
    }
  }, [tiempos, data]);

  console.log('tiempo', tiempos);
  
  const pages = useMemo(() => {
    return data?.last_page;
  }, [data?.total, rowPerPage]);

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

  const loadingState = isLoading || data?.legth === 0 ? 'loading' : 'idle';
  const { isOpen, onOpen, onOpenChange, onClose } = useDisclosure();

  const topContent = React.useMemo(() => {
    return (
      <div className='flex flex-col gap-4'>
        <div className='flex items-end justify-between gap-3'>
          <span className='text-xl font-bold'>Tabla General</span>
        </div>

        {/* Filtrar por Categorias */}
        <div className="flex items-center justify-between gap-4">
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
            {categorias.map((cat) => (
              <SelectItem key={cat.name} value={cat.name}>
                {cat.name}
              </SelectItem>
            ))}
          </Select>
        </div>
      </div>
    );
  }, [rowPerPage, data?.total, isOpen]);

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
        const firstTime = tiempos[0]?.tiempo_acumulado;
        const prevTime = index > 0 ? tiempos[index - 1].tiempo_acumulado : null;

        const diffWithFirst = calculateTimeDifference(firstTime, row.tiempo_acumulado);
        const diffWithPrev = prevTime ? calculateTimeDifference(prevTime, row.tiempo_acumulado) : null;

        return (
          <>
            <div className="text-blue-500">{diffWithFirst}</div>
            {diffWithPrev && <div className="text-purple-500">{diffWithPrev}</div>}
          </>
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
              align={column.uid === 'acciones' || column.uid === 'num_especiales' ? 'center' : 'start'}
            >
              {column.name}
            </TableColumn>
          )}
        </TableHeader>
        <TableBody
          items={tiempos ?? []}
          loadingContent={<Spinner />}
          loadingState={loadingState}
          emptyContent={'Sin Tiempos'}
        >
          {tiempos?.map((item, index) => (
            <TableRow key={item?.tripulacion.id}>
              {(columnKey) => (
                <TableCell>{renderCell(item, columnKey, index, tiempos)}</TableCell>
              )}
            </TableRow>
          ))}
        </TableBody>
      </Table>
      {/* <pre>{JSON.stringify(data?.data)}</pre> */}
    </>
  )
}

export default TAcumuladosTable