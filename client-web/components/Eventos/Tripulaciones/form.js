import {
  Button,
  Input,
  Modal,
  ModalContent,
  ModalHeader,
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
import imgToWebP from "@/components/utils/imgToWebP";

import TripulacionService from "@/services/TripulacionService";
import SearchInput from "@/components/utils/SearchInput";
import CategoriaService from "@/services/CategoriaService";

const Form = forwardRef(
  ({ isOpen, onOpenChange, save, isEdit, id, idEvent }, ref) => {
    const [datos, setDatos] = useState(null);

    const endpoint = isEdit
      ? `api/tripulacions/${id}?_method=PUT`
      : "api/tripulacions";
      
    // Ahora `useForm` se llama incondicionalmente con el endpoint calculado
    const form = useForm("post", endpoint, formData);

    const {
      data: categorias,
    } = CategoriaService.getData({
      page: 1,
      rowsPerPage: 30,
      event_id: idEvent,
    });

    console.log(categorias?.last_page);
    console.log(categorias);

    useEffect(() => {
      const fetchData = async () => {
        console.log("EDIT", isEdit);
        if (isEdit) {
          const eventData = await tripulacion(id);
          setDatos(eventData);
        }
      };

      fetchData();
    }, [isEdit, id]);

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
              // Convertir la imagen a WebP
              imgToWebP(compressedResult).then((webpFile) => {
                form.setData("foto_url", webpFile); // Asignar la imagen en formato WebP al form
              });
              // const compressedFile = new File([compressedResult], file.name, {
              //   type: compressedResult.type,
              // });

              // form.setData("foto_url", compressedFile); // Asignar la imagen comprimida al form
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
      event.preventDefault();
      console.log("onSave ha sido llamado"); // <- Esto debería aparecer
      
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


      form
        .submit()
        .then(() => {
          save();
        })
        .catch((e) => {
          console.log("El error!!!!", e);
        });
    };

    return (
      <>
        <Modal
          isOpen={isOpen}
          onOpenChange={onOpenChange}
          placement="center"
          scrollBehavior="outside"
        >
          <ModalContent>
            {(onClose) => (
              <>
                <ModalHeader className="flex flex-col gap-1">
                  {isEdit ? "Editar Tripulación" : "Agregar Tripulación"}
                </ModalHeader>

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

                    <div className="px-4 py-2">
                      <div
                        {...getRootProps()}
                        className="px-4 py-2 border-2 border-green-300 rounded-lg cursor-pointer hover:border-green-500 hover:bg-zinc-50 dark:border-green-500 dark:hover:border-green-700 dark:hover:bg-zinc-800"
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
                        <div className="flex justify-center mt-4">
                          <img
                            src={preview}
                            alt="Vista previa"
                            className="object-cover rounded-md w-50"
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
            )}
          </ModalContent>
        </Modal>
      </>
    );
  },
);
Form.displayName = "TripulacionForm";
export default Form;
