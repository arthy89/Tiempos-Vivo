"use client";

import { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { getUser, loginUser } from "@/slices/authSlice";
import { useRouter } from "next/navigation";

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

  return (
    <div className="login-container">
      <h1>Login</h1>
      <form onSubmit={handleSubmit}>
        <div>
          <label>Email:</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Password:</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        {loading && <p>Loading...</p>}
        {error && <p style={{ color: "red" }}>{error}</p>}
        <button type="submit" disabled={loading}>Login</button>
      </form>
    </div>
  );
}
