import React from 'react'
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
  Divider,
  Select,
  SelectItem,
  TimeInput,
} from '@nextui-org/react';
import toast, { Toaster } from 'react-hot-toast';
import { FaUserAstronaut } from "react-icons/fa";
import {CalendarDate, parseDate, getLocalTimeZone, parseAbsoluteToLocal, Time, ZonedDateTime} from "@internationalized/date";
import {useDateFormatter} from "@react-aria/i18n";
import 'filepond/dist/filepond.min.css';
import 'filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css';
import '@/styles/editfilepond.css'; // Si tienes tus propios estilos personalizados.
import NextuiAlert from 'nextui-alert';
import { forwardRef, useEffect, useImperativeHandle, useState } from 'react';
import { useForm } from 'laravel-precognition-react';
import TIemposService from '@/services/TIemposService';
import EspecialService from '@/services/EspecialService';
// import CategoriaService from '@/components'
import SearchInpTripulacion from '@/components/utils/SearchInpTripulacion'
import { formData } from './formData';

const Form = forwardRef(({ save, isEdit, id, onClose, idEvent, especial, showToast }, ref) => {  
  // console.log('ESPECIAL SELECCIONAD', especial);
  const [datos, setDatos] = useState(null);

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState('');

  // ! ENVIAR FORM 
  const form = isEdit
    ? useForm('post', 'api/tiempos/' + id + '?_method=PUT', formData)
    : useForm('post', 'api/tiempos', formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log('EDIT', isEdit);
      if (isEdit) {
        const eventData = await tiempoFetch(id); 
        setDatos(eventData); // Este cambio no es inmediato
      }
    };
  
    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  const tiempoFetch = async (id) => {
    const res = await TIemposService.get(id);
    form.setData(res);
  };

  // * Para el Time Input's
  const parseTime = (timeString) => {
    if (timeString != null) {
      const [hours, minutes, seconds] = timeString.split(':').map(Number);
      return new Time(hours, minutes, seconds);
    }
  };

  const formatTime = (value) => {
    const hour = String(value.hour).padStart(2, '0');
    const minute = String(value.minute).padStart(2, '0');
    const second = String(value.second).padStart(2, '0');
    return `${hour}:${minute}:${second}`;
  };

  const onSave = async (event) => {
    form.setData('especial_id', especial);

    if (form.data.hora_salida != '' && form.data.hora_llegada) {
      form.setData('hora_marcado', '');
    }

    if (form.data.penalizacion == '0:0:0') {
      form.setData('penalizacion', '00:00:00');
    }

    event.preventDefault();

    form
      .submit()
      .then(() => {
        save();
        showToast('Tiempo guardado', 'success');
      })
      .catch((e) => {
        toast.error('Error, llenar al menos la SALIDA', {
          position: 'top-right',
        });
        console.log("El error!!!!", e);
      });
  };

  return (
    <>
      <form ref={ref} onSubmit={onSave} className='flex flex-col gap-2'>
        <ModalHeader className='flex flex-col gap-1'>
          {isEdit ? `Editar Tripulación ${form.data?.tripulacion?.auto_num}` : 'Registrar Nuevo Tiempo'}
        </ModalHeader>

        <ModalBody>
          <SearchInpTripulacion 
            label="Tripulación" 
            formKey="tripulacion_id" 
            form={form} 
            placeholder="Buscar la Tripulación..."
            initialValue={form.data?.tripulacion 
              ? `${form.data.tripulacion.auto_num} - ${form.data.tripulacion.categoria} - ${form.data.tripulacion.piloto?.nombre} - ${form.data.tripulacion.navegante?.nombre}` 
              : ''
            }
            idEvent={idEvent}
          />

          <TimeInput 
            label="Salida" 
            labelPlacement='outside'
            variant='bordered'
            hourCycle="24"
            granularity='second'
            value={parseTime(form.data.hora_salida)}
            onChange={(e) => {
              form.setData('hora_salida', formatTime(e))
            }}
            color={form.invalid('hora_salida') ? 'danger' : 'success'}
            onBlur={() => form.validate('hora_salida')}
            isInvalid={form.invalid('hora_salida')}
            errorMessage={form.errors.hora_salida}
            isRequired
          />

          <TimeInput 
            label="Llegada" 
            labelPlacement='outside'
            variant='bordered'
            hourCycle="24"
            granularity='second'
            value={parseTime(form.data.hora_llegada)}
            onChange={(e) => {
              form.setData('hora_llegada', formatTime(e))
            }}
            color={form.invalid('hora_llegada') ? 'danger' : 'success'}
            onBlur={() => form.validate('hora_llegada')}
            isInvalid={form.invalid('hora_llegada')}
            errorMessage={form.errors.hora_llegada}
            isRequired
          />

          <TimeInput 
            label="Penalización" 
            labelPlacement='outside'
            // variant='bordered'
            hourCycle="24"
            granularity='second'
            value={parseTime(form.data.penalizacion)}
            onChange={(e) => {
              form.setData('penalizacion', formatTime(e))
            }}
            color={'danger'}
            onBlur={() => form.validate('penalizacion')}
            isInvalid={form.invalid('penalizacion')}
            errorMessage={form.errors.penalizacion}
          />

          <Divider className="my-1" />

          <TimeInput 
            label="Tiempo Marcado" 
            labelPlacement='outside'
            variant='bordered'
            hourCycle="24"
            granularity='second'
            value={parseTime(form.data.hora_marcado)}
            onChange={(e) => {
              form.setData('hora_marcado', formatTime(e))
            }}
            color={form.invalid('hora_marcado') ? 'danger' : 'success'}
            onBlur={() => form.validate('hora_marcado')}
            isInvalid={form.invalid('hora_marcado')}
            errorMessage={form.errors.hora_marcado}
            isRequired
          />
        </ModalBody>

        <ModalFooter>
          <Button color='danger' variant='flat' onPress={onClose}>
            Cerrar
          </Button>
          <Button color='primary' type='submit'>
            Guardar
          </Button>
        </ModalFooter>
      </form>

      {/* Alert */}
      {/* {alertVisible && (
        <NextuiAlert
          severity="danger"
          title="Ocurrio un error"
          startContent={<IoAlertCircle />}
          endContent={
            <Button size="sm" variant="light" color="danger" onClick={() => setAlertVisible(false)}>
              <RxCross1 />
            </Button>
          }
        >
          {alertMessage}
        </NextuiAlert>
      )} */}
      <Toaster />
    </>
  )
});

export default Form;