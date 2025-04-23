"use client";
import { title, subtitle } from "@/components/primitives";
import { Tabs, Tab, Card, CardBody, Spinner } from "@nextui-org/react";
import React, { useEffect, useRef, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import EventoService from "@/services/EventoService";
import CategoriaTable from "@/components/Eventos/Categorias/CategoriaTable";
import TripulacionTable from "@/components/Eventos/Tripulaciones/TripulacionTable";
import TiemposTable from "@/components/Eventos/Tiempos/TiemposTable";
import TAcumuladosTable from "@/components/Eventos/Tiempos/TAcumuladosTable";
import OrdenPartida from "@/components/Eventos/OrdenPartida/OrdenPartida";
import ParametrosCard from "@/components/Eventos/Parametros/ParametrosCard";
import EspecialTable from "@/components/Eventos/Especiales/EspecialTable";
import { useSelector } from "react-redux";

function Page() {
  const user = useSelector((state) => state.auth.user);
    // console.log("Usuario desde EventoTable:", user.roles[0].name);
    
  const router = useRouter();
  const params = useParams();

  const [evento, setEvento] = useState(null);
  const [categorias, setCategorias] = useState([]);
  const [isAuthorized, setIsAuthorized] = useState(false);
  // const { slug } = router.query;

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];

  console.log("paraaaaaam", params.id.split("-", 2)[0]);
  // console.log('IODDDDDDDDDDDD', id);

  useEffect(() => {
    const fetchData = async () => {
      const data = await EventoService.get(idEvent);
      setEvento(data);
      
      // Validar acceso
      if (user?.org_id === 1 || user?.org_id === data.org_id) {
        setIsAuthorized(true);
      } else {
        router.push("/admin/eventos"); // Redirigir si no tiene acceso
      }
    };
    
    fetchData();

  }, []);

  console.log(evento);

  if (!evento || !isAuthorized) {
    return (
      <div className="flex justify-center">
        <Spinner
          size="lg"
          // labelColor="primary"
          label="Cargando..."
        />
      </div>
    ); // o un spinner si prefieres
  }

  return (
    <>
      <div className="px-4">
        <span className={title({ color: "blue", size: "xs" })}>{evento?.name}</span>
      </div>
      <div className="flex flex-col w-full">
        <Tabs aria-label="Options" color="primary" className="px-2">
          {/* Mostrar segun el Rol */}
          {(user.roles[0].name == 'GOD' || user.roles[0].name == 'Administrador') && (
            <>
              <Tab key="parametros" title="Parámetros">
                <ParametrosCard 
                  idEvent={idEvent}
                  especiales={evento?.especiales}
                />
              </Tab>
              <Tab key="especiales" title="Especiales">
                <EspecialTable idEvent={idEvent} />
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
            </>
          )}
          <Tab key="tiempos" title="Tiempos">
            <TiemposTable 
              idEvent={idEvent}
              especiales={evento?.especiales}
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
