import { title, subtitle } from "@/components/primitives";
import { Tabs, Tab, Card, CardBody } from "@nextui-org/react";
import React, { useEffect, useRef, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import EventoService from "@/services/EventoService";
import TiemposTable from "@/components/Eventos/Tiempos/TiemposTable";
import TAcumuladosTable from "@/components/Eventos/Tiempos/TAcumuladosTable";

function TiemposShow() {
  const params = useParams();

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];

  const [evento, setEvento] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      const data = await EventoService.get(idEvent);
      setEvento(data);
    };

    fetchData();
  }, []);

  return (
    <>
      <div className="px-4">
        <span className={title({ color: "blue", size: "xs" })}>{evento?.name}</span>
        <br/>
        <span className="text-xs">Tiempos <strong>No Oficiales</strong> a espera de resultados finales</span>
      </div>
      <div className="flex flex-col w-full">
        <Tabs aria-label="Options" color="success" className="px-3">
          <Tab key="especiales" title="Por Especiales">
            <TiemposTable 
              idEvent={idEvent}
              modo="client"
              etapas={evento?.etapas}
              categorias={evento?.categorias}
            />
          </Tab>
          <Tab key="acumulado" title="Tiempo Acumulado">
            <TAcumuladosTable
              idEvent={idEvent}
              categorias={evento?.categorias}
              modo="client"
            />
          </Tab>
        </Tabs>
      </div>
    </>
  );
}

export default TiemposShow;
