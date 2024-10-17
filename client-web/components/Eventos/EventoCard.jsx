import React from 'react'
import {
  Card,
  CardHeader,
  CardBody,
  Image,
  CardFooter,
  Button,
  Link,
} from "@nextui-org/react";
import { useRouter } from "next/navigation";
import { formatDate, formatTime } from '@/utils/formatDateTime'

function EventoCard({ evento }) {
  console.log(evento)

  const router = useRouter();
  
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const handleClick = (e) => {
    // console.log(e);
    const slug = `${e.id}-${e.name.replace(/\s+/g, '-').toLowerCase()}`;
    router.push(`/${slug}`);
  }

  return (
    <Card className="py-4" isPressable onClick={() => handleClick(evento)}>
      <CardHeader className="flex-col items-start px-4 pt-2 pb-0">
        <p className="font-bold uppercase text-tiny">
          {formatDate(evento.fecha)}
        </p>
        <small className="text-default-500">{formatTime(evento.hora)}</small>
        <h4 className="font-bold text-large text-start">{evento.name}</h4>
      </CardHeader>
      <CardBody className="py-2 overflow-visible">
        <Image
          alt="Img del Evento"
          className="object-cover rounded-xl"
          src={evento.foto_url != null ? `${url}`+`${evento.foto_url}` : '/img/mono.png'}
          width={270}
        />
      </CardBody>
    </Card>
  )
}

export default EventoCard