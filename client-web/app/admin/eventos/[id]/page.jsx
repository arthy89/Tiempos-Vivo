"use client";
import { title, subtitle } from "@/components/primitives";
import { Tabs, Tab, Card, CardBody } from "@nextui-org/react";
import React, { useEffect, useRef, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import EventoService from "@/services/EventoService";
import EtapaTable from "@/components/Eventos/Etapas/EtapaTable";
import CategoriaTable from "@/components/Eventos/Categorias/CategoriaTable";
import TripulacionTable from "@/components/Eventos/Tripulaciones/TripulacionTable";
import TiemposTable from "@/components/Eventos/Tiempos/TiemposTable";
import TAcumuladosTable from "@/components/Eventos/Tiempos/TAcumuladosTable";
import OrdenPartida from "@/components/Eventos/OrdenPartida/OrdenPartida";
import ParametrosCard from "@/components/Eventos/Parametros/ParametrosCard";

function Page() {
  const router = useRouter();
  const params = useParams();

  const [evento, setEvento] = useState(null);
  const [categorias, setCategorias] = useState([]);
  // const { slug } = router.query;

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];

  console.log("paraaaaaam", params.id.split("-", 2)[0]);
  // console.log('IODDDDDDDDDDDD', id);

  useEffect(() => {
    const fetchData = async () => {
      const data = await EventoService.get(idEvent);
      setEvento(data);
    };

    fetchData();
  }, []);

  console.log(evento);

  return (
    <>
      <div className="px-4">
        <span className={title({ color: "blue", size: "xs" })}>{evento?.name}</span>
      </div>
      <div className="flex flex-col w-full">
        <Tabs aria-label="Options" color="primary" className="px-2">
          <Tab key="parametros" title="Parámetros">
            <ParametrosCard 
              idEvent={idEvent}
              etapas={evento?.etapas}
            />
          </Tab>
          <Tab key="etapas" title="Etapas">
            <EtapaTable idEvent={idEvent} />
          </Tab>
          <Tab key="categorias" title="Categorías">
            <CategoriaTable idEvent={idEvent} />
          </Tab>
          <Tab key="tripulaciones" title="Tripulaciones">
            <TripulacionTable idEvent={idEvent} />
          </Tab>
          <Tab key="orden_partida" title="Orden de Partida">
            <OrdenPartida 
              idEvent={idEvent}
              eventName={evento?.name}
            />
          </Tab>
          <Tab key="tiempos" title="Tiempos">
            <TiemposTable 
              idEvent={idEvent}
              etapas={evento?.etapas}
              categorias={evento?.categorias}
              eventName={evento?.name}
            />
          </Tab>
          <Tab key="acumulado" title="Tiempo Acumulado">
            <TAcumuladosTable
              idEvent={idEvent}
              categorias={evento?.categorias}
              evento={evento}
            />
          </Tab>
        </Tabs>
      </div>
    </>
  );
}

export default Page;
