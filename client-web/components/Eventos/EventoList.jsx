import React from "react";
import EventoCard from "@/components/Eventos/EventoCard";

function EventoList({ eventos }) {
  // console.log("evento:", eventos);

  return (
    <div className="grid min-[320px]:max-md:grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
      {eventos.data.map((evento) => (
        <EventoCard evento={evento} key={evento.id} />
      ))}
    </div>
  );
}

export default EventoList;
