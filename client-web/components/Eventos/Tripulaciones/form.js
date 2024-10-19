import {
  Button,
  Input,
  ModalBody,
  ModalFooter,
  Select,
  SelectItem,
  Divider,
} from "@nextui-org/react";
import { forwardRef, useEffect, useState, useCallback } from "react";
import { useForm } from "laravel-precognition-react";
import Compressor from "compressorjs";
import { useDropzone } from "react-dropzone";

import { formData } from "./formData";

import TripulacionService from "@/services/TripulacionService";
import SearchInput from "@/components/utils/SearchInput";
import CategoriaService from "@/services/CategoriaService";

const Form = forwardRef(
  ({ save, isEdit, id, onClose, idEvent, onSelectConductor }, ref) => {
    const [datos, setDatos] = useState(null);
    const {
      data: categorias,
      mutate: catMutate,
      isLoading: catLoading,
    } = CategoriaService.getData({
      page: 1,
      rowsPerPage: 30,
      // order_by: '-id',
      event_id: idEvent,
    });

    console.log(categorias?.last_page);
    console.log(categorias);

    // Estados para la alerta
    const [alertVisible, setAlertVisible] = useState(false);
    const [alertMessage, setAlertMessage] = useState("");

    // ! ENVIAR FORM
    const form = isEdit
      ? useForm("post", "api/tripulacions/" + id + "?_method=PUT", formData)
      : useForm("post", "api/tripulacions", formData);

    useEffect(() => {
      const fetchData = async () => {
        console.log("EDIT", isEdit);
        if (isEdit) {
          const eventData = await tripulacion(id);

          setDatos(eventData); // Este cambio no es inmediato
        }
      };

      fetchData();
    }, [isEdit, id]); // Elimina `datos` de las dependencias

    const tripulacion = async (id) => {
      const res = await TripulacionService.get(id);

      form.setData(res);
    };

    // ? FOTOS
    const [preview, setPreview] = useState(null); // Para almacenar la vista previa de la imagen

    const onDrop = useCallback(
      (acceptedFiles) => {
        const file = acceptedFiles[0];

        if (file) {
          // Crear una vista previa de la imagen
          const previewUrl = URL.createObjectURL(file);

          setPreview(previewUrl);

          // Comprimir la imagen
          new Compressor(file, {
            quality: 0.6,
            convertSize: 500000,
            success(compressedResult) {
              const compressedFile = new File([compressedResult], file.name, {
                type: compressedResult.type,
              });

              form.setData("foto_url", compressedFile); // Asignar la imagen comprimida al form
            },
            error(err) {
              console.log(err.message);
            },
          });
        }
      },
      [form],
    );

    const { getRootProps, getInputProps, isDragActive } = useDropzone({
      onDrop,
      accept: {
        "image/jpeg": [".jpeg", ".jpg"],
        "image/png": [".png"],
      },
      maxFiles: 1,
      onDropRejected: (fileRejections) => {
        fileRejections.forEach((file) => {
          console.error(
            `Rejected file: ${file.file.name}, reason: ${file.errors[0].message}`,
          );
        });
      },
    });

    const onSave = async (event) => {
      // console.log('EVENTTTTTTT', idEvent);
      form.setData("event_id", idEvent);

      // Verifica si 'piloto' es un objeto y extrae su 'id'
      if (typeof form.data.piloto === "object" && form.data.piloto.id) {
        form.setData("piloto", form.data.piloto.id);
      }

      // Verifica si 'navegante' es un objeto y extrae su 'id'
      if (typeof form.data.navegante === "object" && form.data.navegante.id) {
        form.setData("navegante", form.data.navegante.id);
      }

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
          <ModalBody>
            <SearchInput
              label="Piloto"
              formKey="piloto"
              form={form}
              placeholder="Buscar Piloto..."
              initialValue={
                form.data.piloto?.nombre
                  ? `${form.data.piloto.nombre} ${form.data.piloto.apellidos}`
                  : ""
              }
            />

            <SearchInput
              label="Navegante"
              formKey="navegante"
              form={form}
              placeholder="Buscar Navegante..."
              initialValue={
                form.data.navegante?.nombre
                  ? `${form.data.navegante.nombre} ${form.data.navegante.apellidos}`
                  : ""
              }
            />

            <Select
              variant="bordered"
              label="Categoría"
              labelPlacement="outside"
              placeholder="Categoría..."
              value={form.data.categoria}
              selectedKeys={[form.data.categoria]}
              color={form.invalid("categoria") ? "danger" : "success"}
              onChange={(e) => {
                form.setData("categoria", e.target.value);
              }}
              onBlur={() => form.validate("categoria")}
              isInvalid={form.invalid("categoria")}
              errorMessage={form.errors.categoria}
              isRequired
            >
              {categorias?.data.map((cat) => (
                <SelectItem key={cat.name} value={cat.name}>
                  {cat.name}
                </SelectItem>
              ))}
            </Select>

            <Input
              label="Vehículo"
              placeholder="Marca - Modelo"
              isRequired
              labelPlacement="outside"
              type="text"
              variant="bordered"
              value={form.data.auto}
              color={form.invalid("auto") ? "danger" : "success"}
              onValueChange={(e) => form.setData("auto", e)}
              onBlur={() => form.validate("auto")}
              isInvalid={form.invalid("auto")}
              errorMessage={form.errors.auto}
            />

            <Input
              label="Número"
              placeholder="Num del Vehículo..."
              isRequired
              labelPlacement="outside"
              type="number"
              variant="bordered"
              value={form.data.auto_num}
              color={form.invalid("auto_num") ? "danger" : "success"}
              onValueChange={(e) => form.setData("auto_num", e)}
              onBlur={() => form.validate("auto_num")}
              isInvalid={form.invalid("auto_num")}
              errorMessage={form.errors.auto_num}
            />

            <Divider className="my-1" />

            <p className="text-sm text-success">
              {isEdit
                ? "Cambiar Foto (Opcional)"
                : "Foto del Vehiculo (Opcional)"}
            </p>

            <div className="py-2 px-4">
              <div
                {...getRootProps()}
                className="border-2 border-green-300 hover:border-green-500 hover:bg-zinc-50 dark:border-green-500 dark:hover:border-green-700 dark:hover:bg-zinc-800 py-2 px-4 rounded-lg cursor-pointer"
              >
                <input {...getInputProps()} />
                {isDragActive ? (
                  <p className="text-sm text-center">
                    Suelta la imagen aquí...
                  </p>
                ) : (
                  <p className="text-sm text-center">Seleccionar imagen</p>
                )}
              </div>

              {preview && (
                <div className="mt-4 flex justify-center">
                  <img
                    src={preview}
                    alt="Vista previa"
                    className="w-50 object-cover rounded-md"
                  />
                </div>
              )}
            </div>
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
      </>
    );
  },
);

export default Form;
