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
} from "@nextui-org/react";
import ParametrosService from "@/services/ParametrosService";

function ParametrosCard({ idEvent, especiales }) {
  const [params, setParams] = useState({
    id: 0,
    event_id: 0,
    set_especial: 0,
    hora_partida: "",
    intervalo: "",
    modo_partida: "",
    esp_hora_salida: "",
    esp_intervalo: "",
    estado_evento: "",
  });

  const { data: paramsData, mutate: paramsMutate, isLoading: paramsIsLoading } = ParametrosService.get({
    event_id: idEvent,
  });

  useEffect(() => {
    if (paramsData) {
      setParams(paramsData);
    }
  }, [paramsData]);
  console.log(especiales);
  
  return (
    <>
      <Card>
        <CardHeader>
          <p className="text-lg font-bold">Configurar Parámetros</p>
        </CardHeader>

        <Divider />

        <CardBody>
          <div>
            <Select
              className='mb-2'
              label="Seleccionar Especial"
              size='sm'
            >
              
            </Select>

            <Switch
              color="danger"
              isSelected={params.set_especial}
              // onValueChange={(value) => form.setData('estado', value)}
            >
              Finalizar
            </Switch>
          </div>
        </CardBody>

        <Divider />

        <CardFooter>

        </CardFooter>
      </Card>
    </>
  )
}

export default ParametrosCard