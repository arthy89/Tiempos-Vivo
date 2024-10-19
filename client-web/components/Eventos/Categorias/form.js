import React from "react";
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
} from "@nextui-org/react";
import "filepond/dist/filepond.min.css";
import "filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css";
import "@/styles/editfilepond.css"; // Si tienes tus propios estilos personalizados.
import { forwardRef, useEffect, useState } from "react";
import { useForm } from "laravel-precognition-react";

import { formData } from "./formData";

import CategoriaService from "@/services/CategoriaService";

const Form = forwardRef(({ save, isEdit, id, onClose, idEvent }, ref) => {
  const [datos, setDatos] = useState(null);

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");

  // ! ENVIAR FORM
  const form = isEdit
    ? useForm("post", "api/categorias/" + id + "?_method=PUT", formData)
    : useForm("post", "api/categorias", formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log("EDIT", isEdit);
      if (isEdit) {
        const eventData = await categoria(id);

        setDatos(eventData); // Este cambio no es inmediato
      }
    };

    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  const categoria = async (id) => {
    const res = await CategoriaService.get(id);

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
          {isEdit ? `Editar ${form.data.name}` : "Agregar Categoría"}
        </ModalHeader>

        <ModalBody>
          <Input
            label="Nombre"
            placeholder="Nombre Categoría..."
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
