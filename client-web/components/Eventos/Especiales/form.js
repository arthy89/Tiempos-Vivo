import React from "react";
import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  ModalHeader,
  Switch,
} from "@nextui-org/react";
import "filepond/dist/filepond.min.css";
import "filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css";
import "@/styles/editfilepond.css"; // Si tienes tus propios estilos personalizados.
import { forwardRef, useEffect, useState } from "react";
import { useForm } from "laravel-precognition-react";
import { formData } from "./formData";
import EspecialService from "@/services/EspecialService";

const Form = forwardRef(({ save, isEdit, id, onClose, idEvent }, ref) => {
  const [datos, setDatos] = useState(null);

  // Estados para la alerta
  const [alertVisible, setAlertVisible] = useState(false);
  const [alertMessage, setAlertMessage] = useState("");

  // ! ENVIAR FORM
  // const form = isEdit
  //   ? useForm("post", "api/especials/" + id + "?_method=PUT", formData)
  //   : useForm("post", "api/especials", formData);

  const endpoint = isEdit
    ? `api/especials/${id}?_method=PUT`
    : "api/especials";
    
  // Ahora `useForm` se llama incondicionalmente con el endpoint calculado
  const form = useForm("post", endpoint, formData);

  useEffect(() => {
    const fetchData = async () => {
      console.log("EDIT", isEdit);
      if (isEdit) {
        const eventData = await especial(id);

        setDatos(eventData); // Este cambio no es inmediato
      }
    };

    fetchData();
  }, [isEdit, id]); // Elimina `datos` de las dependencias

  const especial = async (id) => {
    const res = await EspecialService.getId(id);

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
          {isEdit ? `Editar ${form.data.nombre}` : "Agregar Especial"}
        </ModalHeader>

        <ModalBody>
          <Input
            label="Especial"
            placeholder="Nombre Especial..."
            labelPlacement="outside"
            type="text"
            isRequired
            variant="bordered"
            value={form.data.nombre}
            onValueChange={(e) => form.setData("nombre", e)}
          />
    
          <Input
            label="Lugar"
            placeholder="Desde - Hasta..."
            labelPlacement="outside"
            type="text"
            variant="bordered"
            value={form.data.lugar}
            onValueChange={(e) => form.setData("lugar", e)}
          />
    
          <Input
            label="Distancia"
            placeholder="KM..."
            labelPlacement="outside"
            type="number"
            variant="bordered"
            value={form.data.distancia}
            onValueChange={(e) => form.setData("distancia", e)}
          />

          <Switch
            color="success"
            isSelected={form.data.estado}
            onValueChange={(value) => form.setData('estado', value)}
          >
            Contar en Acumulado
          </Switch>
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
Form.displayName = "EspecialForm";
export default Form;
