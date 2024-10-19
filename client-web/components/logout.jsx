// Cerrar sesión en algún componente
import { useDispatch } from "react-redux";
import { logout } from "@/slices/authSlice";

export const LogoutButton = () => {
  const dispatch = useDispatch();

  const handleLogout = () => {
    dispatch(logout());
  };

  return <button onClick={handleLogout}>Logout</button>;
};
