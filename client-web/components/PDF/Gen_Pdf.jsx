import React from 'react'
import { useEffect, useState } from "react";
import jsPDF from "jspdf";
import "jspdf-autotable";

const Gen_Pdf = ({ dataForPdf, onComplete  }) => {

  // const { tiempos } = dataForPdf;
  // console.log(tiempos);
  // console.log(JSON.stringify(dataForPdf, null, 2));
  
  const generatePdf = () => {
    // const { tiempos } = dataForPdf;

    const tiempos = JSON.parse(JSON.stringify(dataForPdf));

    console.log('TIME', tiempos);


    const doc = new jsPDF();
    // const evento = JSON.parse(localStorage.getItem("evento"));

    // Nombre del Especial
    doc.setFontSize(18);
    doc.text(`${tiempos[0].especial.nombre}`, 14, 20);
    // doc.text(`${evento.nombre}`, 14, 20);

    // doc.setFontSize(16);

    const columns = [
      "Nº",
      "COCHE",
      "PILOTO",
      "CAT",
      "H. SALIDA",
      "H. LLEGADA",
      "PENA",
      "TIEMPO",
    ];

    const tableData = tiempos.map((tiempo, index) => [
      index + 1,
      tiempo.tripulacion.auto_num,
      `${tiempo.tripulacion.piloto.nombre} ${tiempo.tripulacion.piloto.apellidos}`,
      tiempo.tripulacion.categoria,
      tiempo.hora_salida,
      tiempo.hora_llegada,
      tiempo.penalizacion,
      tiempo.hora_marcado,
    ]);

    // Generar tabla en el PDF
    doc.autoTable({
      head: [columns],
      body: tableData,
      startY: 30, // Ajusta la posición inicial de la tabla
    });
    
    // Guardar el PDF
    // doc.save(`tiempos-${evento.nombre}-${especial.nombre}.pdf`);
    doc.save(`tiempos-${tiempos[0].categoria}-${tiempos[0].especial.nombre}.pdf`)
  };

  useEffect(() => {
    if (dataForPdf) {
      generatePdf();
      onComplete(); // Notificar al padre que el PDF ya fue generado
    }
  }, [dataForPdf]);

  return null;
};

export default Gen_Pdf