import React from "react";
import { Button, Input, ModalBody, ModalFooter } from "@nextui-org/react";
import "filepond/dist/filepond.min.css";
import "filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css";
import "@/styles/editfilepond.css"; // Si tienes tus propios estilos personalizados.
import { forwardRef, useEffect, useState } from "react";
import { useForm } from "laravel-precognition-react";

import { formData } from "./formData";

import TripulacionService from "@/services/TripulacionService";

const Form = forwardRef(({ save, isEdit, id, onClose, idEvent }, ref) => {
  const [datos, setDatos] = useState(null);

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");

  // ! ENVIAR FORM
  const form = isEdit
    ? useForm("post", "api/drivers/" + id + "?_method=PUT", formData)
    : useForm("post", "api/drivers", formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log("EDIT", isEdit);
      if (isEdit) {
        const eventData = await drivers(id);

        setDatos(eventData); // Este cambio no es inmediato
      }
    };

    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  const drivers = async (id) => {
    const res = await TripulacionService.get(id);

    form.setData(res);
  };

  const onSave = async (event) => {
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

    form.setData("nombre", "");
    form.setData("apellidos", "");
  };

  return (
    <>
      <form ref={ref} onSubmit={onSave} className="flex flex-col gap-2">
        <ModalBody>
          <Input
            label="Nombre"
            placeholder="Nombre..."
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

          <Input
            label="Apellidos"
            placeholder="Apellidos..."
            isRequired
            labelPlacement="outside"
            type="text"
            variant="bordered"
            value={form.data.apellidos}
            color={form.invalid("apellidos") ? "danger" : "success"}
            onValueChange={(e) => form.setData("apellidos", e)}
            onBlur={() => form.validate("apellidos")}
            isInvalid={form.invalid("apellidos")}
            errorMessage={form.errors.apellidos}
          />
        </ModalBody>

        <ModalFooter>
          {/* <Button color='danger' variant='flat' onPress={onClose}>
            Cerrar
          </Button> */}
          <Button color="primary" type="submit">
            Agregar Conductor
          </Button>
        </ModalFooter>
      </form>
    </>
  );
});

export default Form;
