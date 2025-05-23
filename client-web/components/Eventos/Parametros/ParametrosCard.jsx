import { useState, useEffect, useMemo, useRef, useCallback } from 'react';
import {
  Card,
  CardHeader,
  CardBody,
  CardFooter,
  Divider,
  Switch,
  Select,
  SelectItem,
  Button,
} from "@nextui-org/react";
import ParametrosService from "@/services/ParametrosService";
import Toast from '@/components/Toast/Toast';
import { Toaster } from "react-hot-toast";

function ParametrosCard({ idEvent, especiales }) {
  const [key, setKey] = useState(0); // Para controlar el Select
  const [params, setParams] = useState({
    id: 0,
    event_id: 0,
    set_especial: 0,
    hora_partida: "",
    intervalo: "",
    modo_partida: "",
    esp_hora_salida: "",
    esp_intervalo: "",
    estado_evento: 0,
  });

  const { data: paramsData, mutate: paramsMutate, isLoading: paramsIsLoading } = ParametrosService.get({
    event_id: idEvent,
  });

  useEffect(() => {
    if (paramsData) {
      setParams(paramsData);
      setKey((prevKey) => prevKey + 1); // Forzar el re-renderizado del Select
    }
  }, [paramsData]);
  // console.log(especiales);

  const updateParametros = async (updateParams) => {
    try {
      const res = await ParametrosService.putParams(updateParams);
      // console.log("Res:", res);
      paramsMutate();
      Toast(res, "success");
    } catch (error) {
      console.log("Error al actualizar!!!: ", error);
      Toast("Error al Actualizar", "error");
    }
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    updateParametros(params);

    // console.log(params);
  }
  
  return (
    <>
      <form onSubmit={handleSubmit}>
        <Card>
          <CardHeader>
            <p className="text-lg font-bold">Configurar Parámetros</p>
          </CardHeader>

          <Divider />

          <CardBody>
            <div>
              <Select
                label="Especial"
                labelPlacement='outside'
                placeholder='Set Especial'
                className='mb-2'
                size='sm'
                key={key} // Para re-renderizarlo de nuevo
                defaultSelectedKeys={[params.set_especial?.toString() ?? '0']}
                onChange={(e) => setParams(prevState => ({
                  ...prevState,
                  set_especial: parseInt(e.target.value), //probar
                }))}
              >
                { especiales?.map((especial) => (
                  <SelectItem key={especial.id}>{especial.nombre}</SelectItem>
                )) }
              </Select>

              <Switch
                color="danger"
                isSelected={params.estado_evento}
                // onValueChange={(value) => form.setData('estado', value)}
                onValueChange={(value) => setParams(prevState => ({
                  ...prevState,
                  estado_evento: value,
                }))}
              >
                Finalizar
              </Switch>
            </div>
          </CardBody>

          <Divider />

          <CardFooter>
            <Button
              type='submit'
              size='md'
              color='success'
            >
              Guardar
            </Button>
          </CardFooter>
        </Card>
      </form>

      <Toaster />
    </>
  )
}

export default ParametrosCard