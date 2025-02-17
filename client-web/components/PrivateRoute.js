"use client";

import { Spinner } from "@nextui-org/react";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { useDispatch } from "react-redux";
import Cookies from "js-cookie";

import { fetchUserData } from "@/slices/authSlice";
import { secureStorage } from "@/utils/SecureStorage";

const PrivateRoute = ({ children }) => {
  const [loading, setLoading] = useState(true); // loading inicia en true
  const router = useRouter();
  const dispatch = useDispatch();
  const [token, setToken] = useState(null);
  const [usuario, setUsuario] = useState(null);

  useEffect(() => {
    if (typeof window !== 'undefined') {
      // Solo acceder a secureStorage y Cookies en el cliente
      const tokenFromCookies = Cookies.get("token");
      const userFromStorage = secureStorage.getItem("user");

      setToken(tokenFromCookies);
      setUsuario(userFromStorage);

      // Solo proceder si existe un token o un usuario
      if (!tokenFromCookies && !userFromStorage) {
        // Si no hay token ni usuario, redirige al login
        router.push("/login");
        setLoading(false); // Detenemos la carga si no hay token
      } else {
        // Si hay token, intenta fetch de datos del usuario
        dispatch(fetchUserData())
          .unwrap()
          .then((userData) => {
            console.log("User Data: ", userData);
            setLoading(false); // Detenemos la carga una vez que tenemos los datos del usuario
          })
          .catch((error) => {
            console.log("Error fetching user data: ", error);
            Cookies.remove("token"); // Removemos el token si falla el fetch
            router.push("/login"); // Redirigimos a login si hay algún error
            setLoading(false); // Nos aseguramos de parar la carga
          });
      }
    }
  }, [router, dispatch]);

  // console.log('usuario ss', usuario);

  if (loading) {
    // Mostrar algún indicador de carga mientras validamos
    return (
      <div className="flex justify-center">
        <Spinner
          size="lg"
          // labelColor="primary"
          label="Cargando datos..."
        />
      </div>
    );
  }

  // Solo mostrar los children si estamos autenticados y los datos del usuario se obtuvieron
  return token ? children : null;
};

export default PrivateRoute;
