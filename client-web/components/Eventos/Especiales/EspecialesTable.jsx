import {
  Button,
  Divider,
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Input,
  Tooltip,
} from "@nextui-org/react";
import { MdOutlineAddCircle, MdDeleteForever } from "react-icons/md";
import { useState } from "react";

function EspecialesTable({ form }) {
  const [especial, setEspecial] = useState({
    nombre: "",
    lugar: "",
    distancia: "",
  });

  const handleChange = (name, value) =>
    setEspecial({ ...especial, [name]: value });

  const agregar = () => {
    if (especial.nombre != "") {
      const updatedEspeciales = [...(form.data.especiales || []), especial];
      form.setData("especiales", updatedEspeciales);

      setEspecial({
        nombre: "",
        lugar: "",
        distancia: "",
      });
    }
  };

  const quitar = (index) => {
    const updatedEspeciales = (form.data.especiales || []).filter(
      (_, i) => i !== index,
    );
    form.setData("especiales", updatedEspeciales);
  };

  return (
    <>
      {/* Form de Especiales */}
      <p className="text-lg font-medium">Lista de Especiales</p>
      <Input
        label="Especial"
        placeholder="Nombre Especial..."
        labelPlacement="outside"
        type="text"
        variant="bordered"
        color={"success"}
        value={especial.nombre}
        onChange={(e) => handleChange("nombre", e.target.value)}
      />

      <Input
        label="Lugar"
        placeholder="Desde - Hasta..."
        labelPlacement="outside"
        type="text"
        variant="bordered"
        color={"success"}
        value={especial.lugar}
        onChange={(e) => handleChange("lugar", e.target.value)}
      />

      <Input
        label="Distancia"
        placeholder="KM..."
        labelPlacement="outside"
        type="number"
        variant="bordered"
        color={"success"}
        value={especial.distancia}
        onChange={(e) => handleChange("distancia", e.target.value)}
      />

      <Button
        onPress={agregar}
        color="primary"
        endContent={<MdOutlineAddCircle size="1.4em" />}
      >
        Agregar a la lista
      </Button>

      <Divider className="my-1" />

      {/* Tabla */}
      <Table className="" aria-label="table-temporal">
        <TableHeader>
          <TableColumn>Nº</TableColumn>
          <TableColumn>Nombre</TableColumn>
          <TableColumn>Lugar</TableColumn>
          <TableColumn align={"center"}>Distancia (KM)</TableColumn>
          <TableColumn align={"center"}>Acción</TableColumn>
        </TableHeader>

        <TableBody emptyContent={"Sin Especiales"}>
          {(form.data.especiales || []).map((esp, index) => (
            <TableRow key={index}>
              <TableCell>{index + 1}</TableCell>
              <TableCell>{esp.nombre}</TableCell>
              <TableCell>{esp.lugar}</TableCell>
              <TableCell>{esp.distancia}</TableCell>
              <TableCell>
                <div className="flex justify-center">
                  <Tooltip color="danger" content="Eliminar">
                    <span
                      onClick={() => quitar(index)}
                      className="text-lg text-danger cursor-pointer active:opacity-50"
                    >
                      <MdDeleteForever size="1.4em" />
                    </span>
                  </Tooltip>
                </div>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </>
  );
}

export default EspecialesTable;
