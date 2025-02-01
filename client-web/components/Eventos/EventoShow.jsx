"use client";
import { IoCarSport, IoTimeSharp } from "react-icons/io5";
import { FaUserAstronaut } from "react-icons/fa";
import { FaRoute } from "react-icons/fa6";
import { Image, Button, Chip } from "@nextui-org/react";
import { title } from "@/components/primitives";
import { useEffect, useState } from "react";
import { useRouter, useParams } from "next/navigation";
import { formatDate, formatTime } from "@/utils/formatDateTime";
import EventoService from "@/services/EventoService";
import Ruta from "@/components/Modals/Ruta";

function EventoShow() {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;
  const router = useRouter();
  const params = useParams();

  const [evento, setEvento] = useState(null);

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];
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
    const slug = `${e.id}-${e.name.replace(/\s+/g, "-").toLowerCase()}`;
    router.push(`/${slug}/tripulaciones`);
  };

  const ClickTiempos = (e) => {
    // console.log(e);
    const slug = `${e.id}-${e.name.replace(/\s+/g, "-").toLowerCase()}`;
    router.push(`/${slug}/tiempos`);
  };

  const [isRutaModal, SetIsRutaModal] = useState(false);
  const [rutaSel, SetRutaSel] = useState(false);
  const ClickRuta = (e) => {
    // console.log(e);
    // SetRutaSel(e);

    if (e) {
      SetRutaSel(e);
      SetIsRutaModal(true);
    }
  }

  return (
    <section className="px-6">
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
              src={
                evento?.foto_url != null
                  ? `${url}` + `${evento.foto_url}`
                  : "/img/mono.png"
              }
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

            {evento?.ruta_url != null && (
              <Button
                color="primary"
                variant="ghost"
                startContent={<FaRoute />}
                className="font-bold"
                onPress={() => ClickRuta(evento.ruta_url)}
              >
                Ver Ruta
              </Button>
            )}
            
            
            <Button
              color="danger"
              variant="shadow"
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

          {/* <div>
            <div className="relative pb-[78.2227%] h-0 overflow-hidden">
              <iframe
                className="absolute top-0 left-0 w-full h-full"
                src="https://cdn.embedly.com/widgets/media.html?src=https://www.relive.cc/view/vdvm1R2D8Nv/widget?r=embed-site&url=https://www.relive.cc/view/vdvm1R2D8Nv?r=embed-site&image=https://www.relive.cc/view/vdvm1R2D8Nv/png?x-ref=embed-site&key=f1631a41cb254ca5b035dc5747a5bd75&type=text/html&schema=relive"
                frameBorder="0"
                allowFullScreen
                scrolling="no"
              ></iframe>
            </div>
          </div> */}
        </div>
      </div>

      {/* Modal de Ruta */}
      <Ruta
        isOpen={isRutaModal}
        onOpenChange={SetIsRutaModal}
        datos={rutaSel}
      />
    </section>
  );
}

export default EventoShow;
