"use client";

import { useDispatch } from "react-redux";
import { logout } from "@/slices/authSlice";
import { useRouter } from "next/navigation";
import { Button } from "@nextui-org/react";
import React from "react";
import CardAdmin from "@/components/Cards/CardAdmin";
// Iconos para el Card
import { PiFlagCheckeredFill } from "react-icons/pi"; // Eventos
import { FaUserFriends } from "react-icons/fa"; // Usuarios
import { PiBuildingApartmentFill } from "react-icons/pi"; // Club
import { FaUserCog } from "react-icons/fa"; // Perfil
import { IoLogOut } from "react-icons/io5"; // Logout
import { BsGearWide } from "react-icons/bs"; // God

function Page() {
  const dispatch = useDispatch();
  const router = useRouter();

  const handleLogout = () => {
    dispatch(logout());
    router.push("/login");
  };

  return (
    <div className="grid gap-2 px-5">
      <p className="text-xl font-bold">Administración</p>
      {/* <p className="mb-2 text-sm text-gray-500">Bienvenido a la sección de administración de carreras.</p> */}

      <CardAdmin 
        titulo={'Eventos y Carreras'}
        desc
        link={'admin/eventos'}
        icono={<PiFlagCheckeredFill  size="1.6em" />}
      />
      
      {/* <CardAdmin 
        titulo={'Usuarios'}
        desc
        link={'#'}
        icono={<FaUserFriends  size="1.6em" />}
      />

      <CardAdmin 
        titulo={'Administración del Club'}
        desc
        link={'#'}
        icono={<PiBuildingApartmentFill  size="1.6em" />}
      />

      <CardAdmin 
        titulo={'Configurar Perfil'}
        desc
        link={'#'}
        icono={<FaUserCog  size="1.6em" />}
      />

      <CardAdmin 
        titulo={'Admin Clubes - God'}
        desc
        link={'#'}
        icono={<BsGearWide  size="1.6em" />}
      /> */}

      <CardAdmin 
        titulo={'Cerrrar Sesión'}
        desc
        link={'#'}
        icono={<IoLogOut  size="1.6em" />}
        out={true}
      />

      
      {/* <Button onPress={() => router.push("admin/eventos")} color="primary">
        Carreras
      </Button>

      <Button onPress={handleLogout} color="danger" variant="flat">
        Cerrar Sesión
      </Button> */}
    </div>
  );
}

export default Page;
