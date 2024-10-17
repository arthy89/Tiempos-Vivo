"use client"
import React from 'react'
import { useRouter, useParams } from "next/navigation";
import TiemposShow from '@/components/Eventos/Tiempos/TiemposShow'
import EventoService from '@/services/EventoService';

function page() {
  return (
    <TiemposShow />
  )
}

export default page