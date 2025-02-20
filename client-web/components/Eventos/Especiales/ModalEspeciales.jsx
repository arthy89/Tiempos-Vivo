import EspecialService from "@/services/EspecialService";
import {
  Button,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Divider,
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Input,
  useDisclosure,
  Switch,
  Chip,
} from "@nextui-org/react";
import { useState } from "react";
import { MdOutlineAddCircle, MdDeleteForever } from "react-icons/md";
import { PiPencilSimpleFill } from "react-icons/pi";
import { BsTrash2Fill } from "react-icons/bs";
import { FaCheckCircle } from "react-icons/fa";
import { FaCheck } from "react-icons/fa6";
import { TbCancel } from "react-icons/tb";
import { useForm } from "laravel-precognition-react";
import { formData } from "./formData";
import Eliminar from "@/components/Modals/Eliminar";
import Toast from '@/components/Toast/Toast';
import { Toaster } from "react-hot-toast";

function ModalEspeciales({isOpen, onOpenChange, datos}) {
  const [edit, setEdit] = useState(false);
  const [id, setId] = useState(0);
  const [isSelected, setIsSelected] = useState(true);

  const { data: especialesList, mutate, isLoading } = EspecialService.getEspecials({
    etapa_id: datos?.id,
  });

  const endpoint = edit
      ? `api/especials/${id}?_method=PUT`
      : "api/especials";
      
  // Ahora `useForm` se llama incondicionalmente con el endpoint calculado
  const form = useForm("post", endpoint, formData);

  const agregar = () => {
    if (form.data.nombre != "") {
      form.setData("etapa_id", datos?.id);

      form
        .submit()
        .then(() => {
          mutate();
          form.setData({ ...formData });
          setEdit(false);
          Toast("Especial Guardado", "success");
        })
        .catch((e) => {
          console.log("El error!!!!", e);
        });
    }
  };

  //* Funcion para abrir el Modal <Eliminar>
  const [isDel, setDel] = useState(false); // Modal de foto
  const [selectData, setSelectData] = useState(null);

  const quitar = async (e) => {
    setSelectData(e);
    setDel(true);
  };

  //* Funcion para eliminar el Registro (Depende del archivo Servicios)
  const delFicha = async (id) => {
    // console.log(id);
    await EspecialService.delete(id);
    mutate();
    setDel(false);
    Toast("Especial Eliminado", "success");
  };

  // ? Funciones para Editar
  const editar = (e) => {
    setId(e.id);

    const safeData = {
      nombre: e.nombre ?? "",
      lugar: e.lugar ?? "",
      distancia: e.distancia ?? "",
      estado: e.estado ?? "",
    };
    
    form.setData(safeData);
    setEdit(true);
  }

  const { isOpen: io, onOpen: oo, onOpenChange: ooc, onClose: oc } = useDisclosure();

  return (
    <>
      <Modal isOpen={isOpen} onOpenChange={onOpenChange} placement="top-center">
        <ModalContent>
          {(onClose) => (
            <>
              {datos && (
                <>
                  <ModalHeader>
                    Especiales Etapa -  {datos.name || datos.nombre}
                  </ModalHeader>

                  <ModalBody>                    
                    <Input
                      label="Especial"
                      placeholder="Nombre Especial..."
                      labelPlacement="outside"
                      type="text"
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
              
                    <Button
                      onPress={agregar}
                      color={edit ? "success" : "primary"}
                      endContent={edit ? <FaCheckCircle  size="1.4em" /> : <MdOutlineAddCircle size="1.4em" />}
                    >
                      {edit ? "Guardar" : "Agregar"}
                    </Button>

                    <Divider className="my-1" />

                    <p className="text-sm font-medium">Lista de Especiales</p>

                    {/* Tabla */}
                    <Table className="h-60" aria-label="Tabla de Especiales">
                      <TableHeader>
                        <TableColumn>Nº</TableColumn>
                        <TableColumn>Especial</TableColumn>
                        {/* <TableColumn>Lugar</TableColumn>
                        <TableColumn align={"center"}>Distancia (KM)</TableColumn> */}
                        <TableColumn align={"center"}>Acción</TableColumn>
                      </TableHeader>
                      
                      <TableBody emptyContent={"Sin Especiales"}>
                        {(especialesList || []).map((esp, index) => (
                          <TableRow key={index}>
                            <TableCell>{index + 1}</TableCell>
                            <TableCell>
                              <div className="grid">
                                <span>{esp.nombre}</span>
                                <span>{esp.lugar}</span>
                                <span>{esp.distancia ? `${esp.distancia} KM` : ""}</span>
                                <span>{esp.estado 
                                        ? <Chip color="success" size="sm"><FaCheck /></Chip> 
                                        : <Chip color="default" size="sm"><TbCancel  /></Chip>}
                                </span>
                              </div>
                            </TableCell>
                            {/* <TableCell>{esp.lugar}</TableCell>
                            <TableCell>{esp.distancia}</TableCell> */}
                            <TableCell>
                              <div className="flex justify-center gap-1">
                                <Button
                                  onPress={() => editar(esp)}
                                  size="sm"
                                  color="warning"
                                  isIconOnly
                                  variant="ghost"
                                >
                                  <PiPencilSimpleFill size="1.6em" />
                                </Button>
                                <Button
                                  onPress={() => quitar(esp)}
                                  size="sm"
                                  color="danger"
                                  isIconOnly
                                >
                                  <BsTrash2Fill size="1.6em" />
                                </Button>
                              </div>
                            </TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </ModalBody>

                  <ModalFooter>
                    <Button color="danger" onPress={onClose}>
                      Cerrar
                    </Button>
                    {/* <Button
                      color="primary"
                      onPress={() => {
                        delFicha(datos.id);
                      }}
                    >
                      Eliminar
                    </Button> */}
                  </ModalFooter>
                </>
              )}
            </>
          )}
        </ModalContent>
      </Modal>

      <Toaster />
      
      <Eliminar
        isOpen={isDel}
        onOpenChange={setDel}
        datos={selectData}
        delFicha={delFicha}
        onClose={oc}
      />
    </>
  )
}

export default ModalEspeciales