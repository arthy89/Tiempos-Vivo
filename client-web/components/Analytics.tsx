"use client"; // Marcamos este componente como de cliente

import { useEffect } from "react";
import { usePathname } from "next/navigation"; // Usamos el hook para obtener el pathname actual
import * as gtag from "@/utils/gtag"; // Importamos las funciones de Google Analytics

export default function Analytics() {
  const pathname = usePathname(); // Obtenemos la ruta actual

  useEffect(() => {
    if (pathname) {
      gtag.pageview(pathname); // Enviamos el evento de página a Google Analytics
    }
  }, [pathname]); // Se ejecuta cada vez que cambia el pathname

  return null; // Este componente no renderiza nada
}
