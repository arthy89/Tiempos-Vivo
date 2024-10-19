"use client";
import {
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Spinner,
  getKeyValue,
  Pagination,
  Input,
  Button,
  useDisclosure,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Tooltip,
} from "@nextui-org/react";
import { useRouter, useParams } from "next/navigation";
import React, { useEffect, useRef, useState } from "react";
import EventoTable from "@/components/Eventos/EventoTable";
import { LogoutButton } from "@/components/logout";

function page() {
  return (
    <div>
      <EventoTable />
    </div>
  );
}

export default page;
