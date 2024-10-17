"use client";
import { IoCarSport, IoTimeSharp } from "react-icons/io5";
import { FaUserAstronaut } from "react-icons/fa";
import { Image, Button, Chip } from "@nextui-org/react";
import { title } from "@/components/primitives";
import { useEffect, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import { formatDate, formatTime } from '@/utils/formatDateTime'
import EventoService from '@/services/EventoService';

function EventoShow() {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;
  const router = useRouter();
  const params = useParams();

  const [evento, setEvento] = useState(null);

  // Extraer el ID
  const idEvent = params.id.split('-', 2)[0];
  // console.log('IODDDDDDDDDDDD', idEvent);

  useEffect(() => {
    const fetchData = async () => {
      const data = await EventoService.get(idEvent);
      setEvento(data);
    };
    fetchData();
  }, [idEvent]);

  // console.log('evento', evento);

  const ClickTripulaciones = (e) => {
    // console.log(e);
    const slug = `${e.id}-${e.name.replace(/\s+/g, '-').toLowerCase()}`;
    router.push(`/${slug}/tripulaciones`);
  }

  const ClickTiempos = (e) => {
    // console.log(e);
    const slug = `${e.id}-${e.name.replace(/\s+/g, '-').toLowerCase()}`;
    router.push(`/${slug}/tiempos`);
  }

  return (
    <section>
      <div className="flex justify-center mb-5">
        <h1 className={title({ color: "blue" })}>{evento?.name}</h1>
      </div>

      <div className="gap-4 sm:grid sm:grid-cols-2">
        {/* derecho */}
        <div className="sm:order-last">
          <div className="flex justify-center pb-4">
            <Image
              isZoomed
              radius="sm"
              alt={evento?.nombre}
              className="object-cover rounded-xl"
              src={evento?.foto_url != null ? `${url}`+`${evento.foto_url}` : '/img/mono.png'}
            />
          </div>
        </div>
          
        {/* izquierdo */}
        <div className="contenedor">
          <div className="grid grid-rows-1 gap-2 mb-2">
            <Button
              color="primary"
              variant="ghost"
              startContent={<FaUserAstronaut />}
              className="font-bold"
              onPress={() => ClickTripulaciones(evento)}
            >
              Tripulaciones Inscritas
            </Button>
            <Button
              color="danger"
              variant="ghost"
              startContent={<IoTimeSharp />}
              className="font-bold"
              onPress={() => ClickTiempos(evento)}
            >
              Ver Tiempos en Vivo
            </Button>
          </div>
        
          <div>
            <p className="text-xl font-bold">{evento?.tipo}</p>
            <p className="text-sm">
              {formatDate(evento?.fecha)} - {formatTime(evento?.hora)}
            </p>
          </div>

          <div>
            <p className="whitespace-pre-line">{evento?.descripcion}</p>
          </div>

          <div>
            <p className="text-lg font-bold">Categorías</p>
            <div className="flex gap-2 pb-2 overflow-y-auto">
              {evento?.categorias.map((cat) => (
                <Chip key={cat.id} color="primary">
                  {cat.name}
                </Chip>
              ))}
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}

export default EventoShow