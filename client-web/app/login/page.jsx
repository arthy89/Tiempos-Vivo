"use client";

import { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { getUser, loginUser } from "@/slices/authSlice";
import { useRouter } from "next/navigation";
import { Card, CardHeader, CardBody, CardFooter, Divider, Input, Button, Spinner } from "@nextui-org/react";
import { IoIosEyeOff, IoIosEye  } from "react-icons/io";

export default function LoginPage() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const dispatch = useDispatch();
  const router = useRouter();
  const { loading, error } = useSelector((state) => state.auth);  // Obtén el estado del authSlice

  const handleSubmit = (e) => {
    e.preventDefault();
    
    // Despacha la acción de loginUser con email y password
    dispatch(loginUser({ email, password }))
      .unwrap()
      .then(() => {
        router.push("/admin");  // Redirecciona si el login es exitoso
      })
      .catch((err) => {
        console.error("Error during login:", err);  // Maneja errores aquí
      });
  };

  const [isVisible, setIsVisible] = useState(false);

  const toggleVisibility = () => setIsVisible(!isVisible);

  return (
    <div className="flex justify-center login-container">
      <Card className="max-w-[400px]">
        <form onSubmit={handleSubmit}>
          <CardHeader className="flex justify-center">
            <div className="flex flex-col">
              <p className="font-bold text-md">Inicio de Sesión</p>
            </div>
          </CardHeader>
          <Divider/>
          <CardBody>
            
              {/* <div>
                <label>Email:</label>
                <input
                  type="email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                />
              </div> */}
              {/* <div>
                <label>Password:</label>
                <input
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                />
              </div> */}
              <Input
                isRequired
                type="email" 
                label="Usuario" 
                placeholder="Ingrese su email..." 
                className="mb-2"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
              />
              
              <Input
                label="Contraseña"
                // variant="bordered"
                placeholder="***"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                isRequired
                endContent={
                  <button className="focus:outline-none" type="button" onClick={toggleVisibility} aria-label="toggle password visibility">
                    {isVisible ? (
                      <IoIosEyeOff className="text-2xl pointer-events-none text-default-400" />
                    ) : (
                      <IoIosEye className="text-2xl pointer-events-none text-default-400" />
                    )}
                  </button>
                }
                type={isVisible ? "text" : "password"}
                className="max-w-xs"
              />
            
          </CardBody>
          <Divider/>
          <CardFooter>
            {loading && <Spinner />}
            {error && <p style={{ color: "red" }}>{error}</p>}
            {/* <button type="submit" disabled={loading}>Login</button> */}
            <Button
              color="primary"
              type="submit"
              disabled={loading}
            >
              Ingresar
            </Button>
          </CardFooter>
        </form>
      </Card>
    </div>
  );
}
