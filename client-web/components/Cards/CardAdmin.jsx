import React from 'react'
import { useRouter } from "next/navigation";
import { useDispatch } from "react-redux";
import { logout } from "@/slices/authSlice";
import {Card, CardHeader, CardBody, CardFooter, Divider, Link} from "@nextui-org/react";
import { PiFlagCheckeredFill } from "react-icons/pi";

function CardAdmin({titulo, desc, link, icono, color, out}) {
  const dispatch = useDispatch();
  const router = useRouter();

  const handleLogout = () => {
    dispatch(logout());
    router.push("/login");
  };
  
  return (
    <Card 
      fullWidth 
      isPressable
      onPress={() => out ? handleLogout() : router.push(link)}
      className={out ? 'bg-danger-300' : ''}
    >
      <CardHeader className="flex gap-3">
        <div>
          {icono}
        </div>
        <div>
          <p>{titulo}</p>
        </div>
      </CardHeader>
    </Card>
  )
}

export default CardAdmin