"use client";

import { useDispatch } from "react-redux";
import { logout } from "@/slices/authSlice";
import { useRouter } from "next/navigation";
import { Button } from "@nextui-org/react";
import React from "react";

function Page() {
  const dispatch = useDispatch();
  const router = useRouter();

  // const usuario

  const handleLogout = () => {
    dispatch(logout());
    router.push("/login");
  };

  return (
    <div>
      <h1>Admin Page</h1>
      <Button onClick={() => router.push("admin/eventos")} color="primary">
        Ir a Eventos
      </Button>

      <Button onClick={handleLogout} color="danger" variant="flat">
        Cerrar Sesión
      </Button>
    </div>
  );
}

export default Page;
