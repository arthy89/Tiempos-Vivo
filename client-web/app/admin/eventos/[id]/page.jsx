"use client";
import { title, subtitle } from "@/components/primitives";
import {Tabs, Tab, Card, CardBody} from "@nextui-org/react";
import React, { useEffect, useRef, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import EventoService from '@/services/EventoService';
import EtapaTable from '@/components/Eventos/Etapas/EtapaTable';
import CategoriaTable from '@/components/Eventos/Categorias/CategoriaTable';
import TripulacionTable from '@/components/Eventos/Tripulaciones/TripulacionTable';
import TiemposTable from '@/components/Eventos/Tiempos/TiemposTable'
import TAcumuladosTable from "@/components/Eventos/Tiempos/TAcumuladosTable";

function page() {
  const router = useRouter();
  const params = useParams();

  const [evento, setEvento] = useState(null);
  const [categorias, setCategorias] = useState([]);
  // const { slug } = router.query;

  // Extraer el ID
  const idEvent = params.id.split('-', 2)[0];

  console.log('paraaaaaam', params.id.split('-', 2)[0]);
  // console.log('IODDDDDDDDDDDD', id);

  useEffect(() => {
    const fetchData = async () => {
      const data = await EventoService.get(idEvent)
      setEvento(data);
    }
    
    fetchData();

  }, []);
  
  return (
    <>
      <div className="pb-2">
        <span className={title({ color: "blue" })}>{evento?.name}</span>
      </div>
      <div className="flex flex-col w-full">
        <Tabs aria-label="Options" color='success'>
          <Tab key="etapas" title="Etapas">
            <EtapaTable 
              idEvent={idEvent}
            />
          </Tab>
          <Tab key="categorias" title="Categorías">
            <CategoriaTable 
              idEvent={idEvent}
            />
          </Tab>
          <Tab key="tripulaciones" title="Tripulaciones">
            <TripulacionTable 
              idEvent={idEvent}
            />
          </Tab>
          <Tab key="tiempos" title="Tiempos">
            <TiemposTable 
              idEvent={idEvent}
            />
          </Tab>
          <Tab key="acumulado" title="Tiempo Acumulado">
            <TAcumuladosTable 
              idEvent={idEvent}
              categorias={evento?.categorias}
            />
          </Tab>
        </Tabs>
      </div> 
    </>
  )
}

export default page