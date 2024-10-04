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

  const handleClick = () => {
    console.log('gaaaa');
  }

  return (
    <Card className="py-4" isPressable onClick={handleClick}>
      <CardHeader className="pb-0 pt-2 px-4 flex-col items-start">
        <p className="text-tiny uppercase font-bold">
          {formatDate(evento.fecha)}
        </p>
        <small className="text-default-500">{formatTime(evento.hora)}</small>
        <h4 className="font-bold text-large text-start">{evento.name}</h4>
      </CardHeader>
      <CardBody className="overflow-visible py-2">
        <Image
          alt="Img del Evento"
          className="object-cover rounded-xl"
          src="/imgs/vuelta-azangaro.jpg"
          width={270}
        />
      </CardBody>
    </Card>
  )
}

export default EventoCard