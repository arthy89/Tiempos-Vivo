"use client";
import { Link } from "@nextui-org/link";
import { Snippet } from "@nextui-org/snippet";
import { Code } from "@nextui-org/code";
import { button as buttonStyles } from "@nextui-org/theme";

import { siteConfig } from "@/config/site";
import { title, subtitle } from "@/components/primitives";
import { GithubIcon } from "@/components/icons";

import { useEffect, useState } from "react";
import EventoService from "@/services/EventoService";

import EventoList from "@/components/Eventos/EventoList";
import CardSkeleton from "@/components/Eventos/CardSkeleton";

export default function Home() {
  const [eventos, setEventos] = useState(null);
  
  useEffect(() => {
    async function fetchData() {
      try {
        const data = await EventoService.getData();
        // console.log(data);
        setEventos(data);
      } catch (error) {
        console.error("Error al obtener los datos: ", error);
      }
    }

    fetchData();
  }, []);


  return (
    <section className="flex flex-col items-center justify-center gap-4 py-8 md:py-10">
      <div className="inline-block max-w-xl text-center justify-center">
        <span className={title()}>Aplicación&nbsp;</span>
        <span className={title({ color: "blue" })}>TEV Perú&nbsp;</span>
        <br />
        {/* <span className={title()}>
          websites regardless of your design experience.
        </span>
        <div className={subtitle({ class: "mt-4" })}>
          Beautiful, fast and modern React UI library.
        </div> */}
      </div>

      <div className="py-2 justify-center">
        {eventos ? (
          // <div>
          //   {eventos?.data.map((evento) => (
          //     <div key={evento.id}>
          //       <p>{evento.name}</p>
          //     </div>
          //   ))}
          // </div>

          <EventoList eventos={eventos} />
        ): (
          <div className="flex gap-4">
            <CardSkeleton />
            <CardSkeleton />
            <CardSkeleton />
            <CardSkeleton />
          </div>
        )}
      </div>

      {/* <div className="flex gap-3">
        <Link
          isExternal
          className={buttonStyles({
            color: "primary",
            radius: "full",
            variant: "shadow",
          })}
          href={siteConfig.links.docs}
        >
          Documentation
        </Link>
        <Link
          isExternal
          className={buttonStyles({ variant: "bordered", radius: "full" })}
          href={siteConfig.links.github}
        >
          <GithubIcon size={20} />
          GitHub
        </Link>
      </div>

      <div className="mt-8">
        <Snippet hideCopyButton hideSymbol variant="bordered">
          <span>
            Get started by editing <Code color="primary">app/page.tsx</Code>
          </span>
        </Snippet>
      </div> */}
    </section>
  );
}
