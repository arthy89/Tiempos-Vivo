import React from "react";
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
  Divider,
} from "@nextui-org/react";
import "filepond/dist/filepond.min.css";
import "filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css";
import "@/styles/editfilepond.css"; // Si tienes tus propios estilos personalizados.
import { forwardRef, useEffect, useState } from "react";
import { useForm } from "laravel-precognition-react";

import { formData } from "./formData";

import EtapaService from "@/services/EtapaService";
import EspecialesTable from "@/components/Eventos/Especiales/EspecialesTable";

const Form = forwardRef(({ save, isEdit, id, onClose, idEvent }, ref) => {
  const [datos, setDatos] = useState(null);

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");

  // ! ENVIAR FORM
  // const form = isEdit
  //   ? useForm("post", "api/etapas/" + id + "?_method=PUT", formData)
  //   : useForm("post", "api/etapas", formData);

  const endpoint = isEdit
    ? `api/etapas/${id}?_method=PUT`
    : "api/etapas";
    
  // Ahora `useForm` se llama incondicionalmente con el endpoint calculado
  const form = useForm("post", endpoint, formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log("EDIT", isEdit);
      if (isEdit) {
        const eventData = await etapa(id);

        setDatos(eventData); // Este cambio no es inmediato
      }
    };

    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  const etapa = async (id) => {
    const res = await EtapaService.get(id);

    form.setData(res);
  };

  const onSave = async (event) => {
    console.log("EVENTTTTTTT", idEvent);
    form.setData("event_id", idEvent);

    event.preventDefault();

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
          {isEdit ? `Editar ${form.data.nombre}` : "Agregar Etapa"}
        </ModalHeader>

        <ModalBody>
          <Input
            label="Etapa"
            placeholder="Nombre Etapa..."
            isRequired
            labelPlacement="outside"
            type="text"
            variant="bordered"
            value={form.data.nombre}
            color={form.invalid("nombre") ? "danger" : "success"}
            onValueChange={(e) => form.setData("nombre", e)}
            onBlur={() => form.validate("nombre")}
            isInvalid={form.invalid("nombre")}
            errorMessage={form.errors.nombre}
          />

          <Divider className="my-1" />

          <EspecialesTable form={form} />
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
Form.displayName = "EtapasForm";
export default Form;
