"use client";
// import { Link } from "@nextui-org/link";
// import { Snippet } from "@nextui-org/snippet";
// import { Code } from "@nextui-org/code";
// import { button as buttonStyles } from "@nextui-org/theme";

import { Image } from "@nextui-org/image";

// import { siteConfig } from "@/config/site";
import { title, subtitle } from "@/components/primitives";
import React, { useState, useEffect } from "react"; // Asegúrate de importar los hooks
// import { useRouter } from "next/navigation"; // Importar hooks de navegación
import EventoService from "@/services/EventoService";

import EventoList from "@/components/Eventos/EventoList";
import CardSkeleton from "@/components/Eventos/CardSkeleton";

export default function Home() {
  // const router = useRouter();

  // const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(5);
  // const [edit, setEdit] = useState(false);
  // const [id, setId] = useState(0);

  const { data, isLoading } = EventoService.getData({
    page,
    rowsPerPage: rowPerPage,
    order_by: "-id",
  });
  // console.log(data?.last_page);
  // console.log(data);

  return (
    <section className="flex flex-col items-center justify-center gap-4 py-8 md:py-10">
      <div className="justify-center inline-block max-w-xl text-center">
        <div className="items-center justify-center gap-4 sm:flex">
          <div className="flex justify-center">
            <Image
              className="w-24 sm:w-40 md:w-60 lg:w-80"
              isBlurred
              radius="full"
              alt="NextUI hero Image"
              src="/img/llanta1.png"
            />
          </div>

          <div>
            <span className={title()}>Rally Cronos&nbsp;</span>
            <span className={title({ color: "blue" })}>
              Tiempos en Vivo Perú&nbsp;
            </span>
          </div>
        </div>

        <br />
        {/* <span className={title()}>
          websites regardless of your design experience.
        </span>
        <div className={subtitle({ class: "mt-4" })}>
          Beautiful, fast and modern React UI library.
        </div> */}
      </div>

      <div className="justify-center py-2">
        {data ? (
          <EventoList eventos={data} />
        ) : (
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
