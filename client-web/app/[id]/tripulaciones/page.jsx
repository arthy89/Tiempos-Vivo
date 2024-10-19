"use client";
import React from "react";
// import { IoCarSport, IoTimeSharp } from "react-icons/io5";
// import { FaUserAstronaut } from "react-icons/fa";
// import { Image, Button, Chip } from "@nextui-org/react";
// import { title } from "@/components/primitives";
// import { useEffect, useState } from "react";
import { useRouter, useParams } from "next/navigation";
// import EventoService from "@/services/EventoService";
import TripulacionTable from "@/components/Eventos/Tripulaciones/TripulacionTable";

function Page() {
  const params = useParams();

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];

  return <TripulacionTable idEvent={idEvent} modo="client" />;
}

export default Page;
