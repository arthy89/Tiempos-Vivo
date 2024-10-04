import React from 'react'
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
  Textarea,
  DatePicker,
  TimeInput,
} from '@nextui-org/react';
import {CalendarDate, parseDate, getLocalTimeZone, parseAbsoluteToLocal, Time, ZonedDateTime} from "@internationalized/date";
import {useDateFormatter} from "@react-aria/i18n";
import {Select, SelectSection, SelectItem} from "@nextui-org/select";
import NextuiAlert from 'nextui-alert'
import { IoAlertCircle } from "react-icons/io5";
import { RxCross1 } from "react-icons/rx";
import { forwardRef, useEffect, useImperativeHandle, useState } from 'react';
import { useForm } from 'laravel-precognition-react';
import EventoService from '@/services/EventoService';
import { formData } from './formData';

const Form = forwardRef(({ save, isEdit, id, onClose }, ref) => {
  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState('');

  // ? Opciones para Selects
  const option_tipos = [
    "Rally",
    "Circuito",
    "Autocross",
  ];

  const form = isEdit
    ? useForm('put', 'http://tev.test/api/events/' + id, formData)
    : useForm('post', 'http://tev.test/api/events', formData);

  useEffect(() => {
    console.log('EDIT', isEdit);
    if (isEdit) {
      evento(id);
    }
  }, []);

  const fecha = (fechaString) => {
    const [year, month, day] = fechaString.split('-').map(Number);
    if (year !== 0) {
      return new CalendarDate(year, month, day);
    }
  };

  let formatter = useDateFormatter({dateStyle: "full"});

  const parseTime = (timeString) => {
    const [hours, minutes, seconds] = timeString.split(':').map(Number);
    return new Time(hours, minutes, seconds);
  };

  const formatTime12Hour = (time) => {
    let hour = time.hour % 12 || 12;
    let period = time.hour >= 12 ? 'PM' : 'AM';
    return `${hour}:${String(time.minute).padStart(2, '0')} ${period}`;
  };

  const evento = async (id) => {
    const res = await EventoService.get(id);
    form.setData(res);
  };

  const onSave = async (event) => {
    event.preventDefault();
    // const res = await UbigeoService.save(form);
    // console.log('save', res);
    form
      .submit()
      .then(() => {
        save();
      })
      .catch((e) => {
        console.log("El error!!!!", e);
        // setAlertMessage("Error en el formulario");
        // setAlertVisible(true);

        // alert(e);
        // <NextuiAlert
        //     severity="warning"
        //     title="Reward Received"
        //     startContent={<IoCloseCircle />}
        //     endContent={
        //         <Button size="sm" variant="bordered" color="warning">
        //             Eat Now
        //         </Button>
        //     }>
        //     You've got a Pizza!
        // </NextuiAlert>
      });
  };

  return (
    <>
      <form ref={ref} onSubmit={onSave} className='flex flex-col gap-2'>
        <ModalHeader className='flex flex-col gap-1'>
          {isEdit ? `Editar ${form.data.name}` : 'Agregar Evento'}
        </ModalHeader>

        <ModalBody>
          <Input
            label='Nombre'
            placeholder='Escriba el nombre del Evento...'
            isRequired
            labelPlacement='outside'
            type='text'
            variant='bordered'
            value={form.data.name}
            color={form.invalid('name') ? 'danger' : 'success'}
            onValueChange={(e) => form.setData('name', e)}
            onBlur={() => form.validate('name')}
            isInvalid={form.invalid('name')}
            errorMessage={form.errors.name}
          />

          <Textarea
            type='text'
            placeholder="Alguna descripción del evento..."
            variant='bordered'
            label="Descripción"
            labelPlacement="outside"
            value={form.data.descripcion}
            color={form.invalid('descripcion') ? 'danger' : 'success'}
            onValueChange={(e) => form.setData('descripcion', e)}
            onBlur={() => form.validate('descripcion')}
            isInvalid={form.invalid('descripcion')}
            errorMessage={form.errors.descripcion}
          />

          <Select
            variant='bordered'
            label='Seleccione el Tipo'
            labelPlacement='outside'
            // className='max-w-xs' 
            value={form.data.tipo}
            selectedKeys={[form.data.tipo]}
            color={form.invalid('tipo') ? 'danger' : 'success'}
            // onValueChange={(e) => form.setData('tipo', e)}
            onChange={(e) => {
              form.setData('tipo', e.target.value);
            }}
            onBlur={() => form.validate('tipo')}
            isInvalid={form.invalid('tipo')}
            errorMessage={form.errors.tipo}
            isRequired
          >
            {option_tipos.map((tipo) => (
              <SelectItem key={tipo}>
                {tipo}
              </SelectItem>
            ))}
          </Select>

          <DatePicker 
            label="Fecha (dd/mm/aaaa)"
            labelPlacement='outside'
            variant='bordered'
            value={fecha(form.data.fecha)}
            color={form.invalid('fecha') ? 'danger' : 'success'}
            onChange={(e) => {
              // console.log(e);
              form.setData(
                'fecha',
                e.year + '-' + e.month + '-' + e.day
              );
            }}
            onBlur={() => form.validate('fecha')}
            isInvalid={form.invalid('fecha')}
            errorMessage={form.errors.fecha}
            isRequired
          />
          
          <p className="text-default-500 text-sm">
            <b>Fecha:</b> {fecha(form.data.fecha) ? formatter.format(fecha(form.data.fecha).toDate(getLocalTimeZone())) : "dd/mm/aaaa"}
          </p>

          <TimeInput 
            label="Hora (24 horas)" 
            labelPlacement='outside'
            variant='bordered'
            hourCycle="12"
            value={parseTime(form.data.hora)}
            onChange={(time) => {
              const hours24 = time.hour + (time.hour < 12 && time.period === 'PM' ? 12 : 0);
            form.setData('hora', `${hours24}:${time.minute}:00`);
            }}
            color={form.invalid('hora') ? 'danger' : 'success'}
            onBlur={() => form.validate('hora')}
            isInvalid={form.invalid('hora')}
            errorMessage={form.errors.hora}
            isRequired
          />
          
          <p className="text-default-500 text-sm">
            <b>Hora:</b> {formatTime12Hour(parseTime(form.data.hora))}
          </p>

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
    </>
  )
});

export default Form;