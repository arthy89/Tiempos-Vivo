"use client";
// import { Link } from "@nextui-org/link";
// import { Snippet } from "@nextui-org/snippet";
// import { Code } from "@nextui-org/code";
// import { button as buttonStyles } from "@nextui-org/theme";

import { Image } from "@nextui-org/image";
import { IoSearchOutline } from "react-icons/io5";

import {
  Input,
  Pagination,
} from "@nextui-org/react";

// import { siteConfig } from "@/config/site";
import { title, subtitle } from "@/components/primitives";
import { useState, useEffect, useMemo } from "react"; // Asegúrate de importar los hooks
// import { useRouter } from "next/navigation"; // Importar hooks de navegación
import EventoService from "@/services/EventoService";

import EventoList from "@/components/Eventos/EventoList";
import CardSkeleton from "@/components/Eventos/CardSkeleton";
import { validateHeaderName } from "http";

export default function Home() {
  // const router = useRouter();

  // const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [page, setPage] = useState(1);
  const [rowPerPage, setRowPerPage] = useState(4);
  // const [edit, setEdit] = useState(false);
  // const [id, setId] = useState(0);

  const [search, setSearch] = useState("");

  const handleSearch = (value) => {
    setSearch(value);
  };

  const { data, mutate, isLoading } = EventoService.getDataLess({
    page,
    rowsPerPage: rowPerPage,
    order_by: "-id",
    search,
  });
  // console.log(data?.last_page);
  // console.log(data);

  const pages = useMemo(() => {
    return data?.last_page;
  }, [data?.total, rowPerPage]);

  return (
    <section className="flex flex-col items-center justify-center gap-4 px-2 md:py-5">
      <div className="justify-center inline-block max-w-xl text-center">
        <div className="items-center justify-center gap-4 sm:flex">
          <div className="flex justify-center">
            <Image
              className="w-14 sm:w-20 md:w-10 lg:w-60"
              isBlurred
              radius="full"
              alt="NextUI hero Image"
              src="/img/llanta1.png"
            />
          </div>

          <div className="px-2">
            <span className={title({ color: "red", size: "xs" })}>Rally Cronos&nbsp;</span>
            <span className={title({ size: "xs" })}>
              Tiempos en Vivo Perú&nbsp;
            </span>
          </div>
        </div>
      </div>

      <div>
        <Input
          label="Buscar"
          size="sm"
          type="text"
          startContent={<IoSearchOutline size="1.2em" />}
          labelPlacement="outside"
          isClearable
          placeholder="Nombre del evento..."
          defaultValue={search}
          onChange={(e) => handleSearch(e.target.value)}
          onClear={() => setSearch("")}
        />
      </div>

      <div className="justify-center">
        {data ? (
          <>
            <EventoList eventos={data} />

            <div className="flex justify-center py-2">
              <Pagination
                // className=""
                isCompact
                showControls
                showShadow
                color="danger"
                page={page}
                total={pages}
                onChange={(page) => setPage(page)}
              />
            </div>
          </>
        ) : (
          <div className="flex gap-4">
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
