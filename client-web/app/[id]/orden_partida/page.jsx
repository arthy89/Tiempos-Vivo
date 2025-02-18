"use client";
import React from 'react'
import { useRouter, useParams } from "next/navigation";
import OrdenPartida from "@/components/Eventos/OrdenPartida/OrdenPartida";

function Page() {
  const params = useParams();

  // Extraer el ID
  const idEvent = params.id.split("-", 2)[0];

  return <OrdenPartida idEvent={idEvent} modo="client" />
}

export default Page;