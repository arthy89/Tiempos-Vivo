import React from "react";
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
  Textarea,
  DatePicker,
  TimeInput,
} from "@nextui-org/react";
// FilePond
import { FilePond, registerPlugin } from "react-filepond";
import FilePondPluginImageExifOrientation from "filepond-plugin-image-exif-orientation";
import FilePondPluginImagePreview from "filepond-plugin-image-preview";
import "filepond/dist/filepond.min.css";
import "filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css";
import "@/styles/editfilepond.css"; // Si tienes tus propios estilos personalizados.
import { CalendarDate, getLocalTimeZone, Time } from "@internationalized/date";
import { useDateFormatter } from "@react-aria/i18n";
import { Select, SelectItem } from "@nextui-org/select";
import { forwardRef, useEffect, useState } from "react";
import { useForm } from "laravel-precognition-react";

import { formData } from "./formData";

import EventoService from "@/services/EventoService";
import UbigeoService from "@/services/UbigeoService";

// Register the plugins
registerPlugin(FilePondPluginImageExifOrientation, FilePondPluginImagePreview);

const Form = forwardRef(({ save, isEdit, id, onClose }, ref) => {
  const [datos, setDatos] = useState(null);

  const [selectDep, setDep] = useState(null);
  const [selectProv, setProv] = useState(null);
  const [selectDist, setDist] = useState(null);

  const { data: departamentos } = UbigeoService.getDepartamentos();
  const { data: provincias } = UbigeoService.getProvincias({
    cod_dep: selectDep,
  });
  const { data: distritos } = UbigeoService.getDistritos({
    cod_dep: selectDep,
    cod_prov: selectProv,
  });
  // console.log('gaaa',departamentos);

  const handleDep = (e) => {
    setDep(e);
    form.setData("departamento", e);
  };

  const handleProv = (e) => {
    setProv(e);
    form.setData("provincia", e);
  };

  const handleDist = (e) => {
    setDist(e);
    form.setData("distrito", e);
  };

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");

  // ? Opciones para Selects
  const option_tipos = ["Rally", "Circuito", "Autocross"];

  // Fotos
  const [file, setFile] = useState(null);

  // ! ENVIAR FORM
  const form = isEdit
    ? useForm("post", "api/events/" + id + "?_method=PUT", formData)
    : useForm("post", "api/events", formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log("EDIT", isEdit);
      if (isEdit) {
        const eventData = await evento(id);

        setDatos(eventData); // Este cambio no es inmediato
      }
    };

    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  // UseEffect para monitorear cambios en "datos"
  useEffect(() => {
    if (datos) {
      console.log("DATOOOOOOS", datos); // Se ejecuta cuando "datos" cambie
    }
  }, [datos]);

  useEffect(() => {
    if (form.data.ubigeo_id && form.data.ubigeo_id.length === 6) {
      const ubigeoId = form.data.ubigeo_id;

      setDep(ubigeoId?.substring(0, 2));
      setProv(ubigeoId?.substring(2, 4));
      setDist(ubigeoId?.substring(4, 6));
    }
  }, [form.data.ubigeo_id]);

  // Este useEffect se ejecutará después de que `selectDep`, `selectProv`, y `selectDist` hayan sido actualizados
  // useEffect(() => {
  //   if (selectDep && selectProv && selectDist) {
  //     console.log('Ubigeo extraído:', { selectDep, selectProv, selectDist });
  //   }
  // }, [selectDep, selectProv, selectDist]);

  const fecha = (fechaString) => {
    const [year, month, day] = fechaString.split("-").map(Number);

    if (year !== 0) {
      return new CalendarDate(year, month, day);
    }
  };

  let formatter = useDateFormatter({ dateStyle: "full" });

  const parseTime = (timeString) => {
    const [hours, minutes, seconds] = timeString.split(":").map(Number);

    return new Time(hours, minutes, seconds);
  };

  const formatTime12Hour = (time) => {
    let hour = time.hour % 12 || 12;
    let period = time.hour >= 12 ? "PM" : "AM";

    return `${hour}:${String(time.minute).padStart(2, "0")} ${period}`;
  };

  const evento = async (id) => {
    const res = await EventoService.get(id);

    form.setData(res);
  };

  const onSave = async (event) => {
    // console.log(file[0].file);
    if (file) {
      form.setData("foto_url", file[0].file);
    }

    // console.log("formmm", form.data);
    form.setData("ubigeo_id", selectDep + selectProv + selectDist);

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
      <form ref={ref} onSubmit={onSave} className="flex flex-col gap-2">
        <ModalHeader className="flex flex-col gap-1">
          {isEdit ? `Editar ${form.data.name}` : "Agregar Evento"}
        </ModalHeader>

        <ModalBody>
          <Input
            label="Nombre"
            placeholder="Escriba el nombre del Evento..."
            isRequired
            labelPlacement="outside"
            type="text"
            variant="bordered"
            value={form.data.name}
            color={form.invalid("name") ? "danger" : "success"}
            onValueChange={(e) => form.setData("name", e)}
            onBlur={() => form.validate("name")}
            isInvalid={form.invalid("name")}
            errorMessage={form.errors.name}
          />

          <Textarea
            type="text"
            placeholder="Alguna descripción del evento..."
            variant="bordered"
            label="Descripción"
            labelPlacement="outside"
            value={form.data.descripcion}
            color={form.invalid("descripcion") ? "danger" : "success"}
            onValueChange={(e) => form.setData("descripcion", e)}
            onBlur={() => form.validate("descripcion")}
            isInvalid={form.invalid("descripcion")}
            errorMessage={form.errors.descripcion}
          />

          <Select
            variant="bordered"
            label="Seleccione el Tipo"
            labelPlacement="outside"
            // className='max-w-xs'
            value={form.data.tipo}
            selectedKeys={[form.data.tipo]}
            color={form.invalid("tipo") ? "danger" : "success"}
            // onValueChange={(e) => form.setData('tipo', e)}
            onChange={(e) => {
              form.setData("tipo", e.target.value);
            }}
            onBlur={() => form.validate("tipo")}
            isInvalid={form.invalid("tipo")}
            errorMessage={form.errors.tipo}
            isRequired
          >
            {option_tipos.map((tipo) => (
              <SelectItem key={tipo}>{tipo}</SelectItem>
            ))}
          </Select>

          <DatePicker
            label="Fecha (dd/mm/aaaa)"
            labelPlacement="outside"
            variant="bordered"
            value={fecha(form.data.fecha) || null}
            color={form.invalid("fecha") ? "danger" : "success"}
            onChange={(e) => {
              // console.log(e);
              form.setData("fecha", e.year + "-" + e.month + "-" + e.day);
            }}
            onBlur={() => form.validate("fecha")}
            isInvalid={form.invalid("fecha")}
            errorMessage={form.errors.fecha}
            isRequired
          />

          <p className="text-default-500 text-sm">
            <b>Fecha:</b>{" "}
            {fecha(form.data.fecha)
              ? formatter.format(
                  fecha(form.data.fecha).toDate(getLocalTimeZone()),
                )
              : "dd/mm/aaaa"}
          </p>

          <TimeInput
            label="Hora (24 horas)"
            labelPlacement="outside"
            variant="bordered"
            hourCycle="12"
            value={parseTime(form.data.hora)}
            onChange={(time) => {
              const hours24 =
                time.hour + (time.hour < 12 && time.period === "PM" ? 12 : 0);

              form.setData("hora", `${hours24}:${time.minute}:00`);
            }}
            color={form.invalid("hora") ? "danger" : "success"}
            onBlur={() => form.validate("hora")}
            isInvalid={form.invalid("hora")}
            errorMessage={form.errors.hora}
            isRequired
          />

          <p className="text-default-500 text-sm">
            <b>Hora:</b> {formatTime12Hour(parseTime(form.data.hora))}
          </p>

          {/* Ubigeo */}

          <Select
            variant="bordered"
            label="Departamento"
            labelPlacement="outside"
            // value={form.data.departamento}
            selectedKeys={[selectDep]}
            color={"success"}
            onChange={(e) => {
              handleDep(e.target.value);
            }}
            isRequired
          >
            {departamentos?.map((dep) => (
              <SelectItem key={dep.cod_dep}>{dep.nombre}</SelectItem>
            ))}
          </Select>

          <Select
            variant="bordered"
            label="Provincia"
            labelPlacement="outside"
            // value={form.data.provincia}
            selectedKeys={[selectProv]}
            color={"success"}
            onChange={(e) => {
              handleProv(e.target.value);
            }}
            isRequired
            isDisabled={!selectDep}
          >
            {provincias?.map((prov) => (
              <SelectItem key={prov.cod_prov}>{prov.nombre}</SelectItem>
            ))}
          </Select>

          <Select
            variant="bordered"
            label="Distrito"
            labelPlacement="outside"
            // value={form.data.distrito}
            selectedKeys={[selectDist]}
            color={"success"}
            onChange={(e) => {
              handleDist(e.target.value);
            }}
            isRequired
            isDisabled={!selectProv}
          >
            {distritos?.map((dist) => (
              <SelectItem key={dist.cod_dist}>{dist.nombre}</SelectItem>
            ))}
          </Select>

          {/* FilePond */}
          <div>
            {/* <p className='text-sm text-success mb-1'>Foto de Portada</p> */}
            {isEdit ? (
              <p className="text-sm text-success mb-1">Cambiar Foto</p>
            ) : (
              <p className="text-sm text-success mb-1">Foto de Portada</p>
            )}
            <FilePond
              files={file}
              onupdatefiles={setFile}
              credits={false}
              labelIdle="Agregar imagen"
            />
          </div>

          {/* URL RUTA */}
          <Input
            label="Ruta"
            placeholder="Link de la ruta..."
            labelPlacement="outside"
            type="text"
            variant="bordered"
            value={form.data.ruta_url}
            color={"success"}
            onValueChange={(e) => form.setData("ruta_url", e)}
            // onBlur={() => form.validate('name')}
            // isInvalid={form.invalid('name')}
            // errorMessage={form.errors.name}
          />
        </ModalBody>

        <ModalFooter>
          <Button color="danger" variant="flat" onPress={onClose}>
            Cerrar
          </Button>
          <Button color="primary" type="submit">
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
  );
});

export default Form;
