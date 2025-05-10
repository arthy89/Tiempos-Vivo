export const formatDate = (dateString) => {
  if (!dateString) return "Fecha no disponible";

  const [year, month, day] = dateString.split("-").map(Number);
  const fecha = new Date(year, month - 1, day); // mes en JS empieza en 0

  const formattedDate = fecha.toLocaleDateString("es-ES", {
    day: "2-digit",
    month: "short",
    year: "numeric",
  });

  return formattedDate;
};

export const formatTime = (timeString) => {
  if (!timeString) return "Hora no disponible";

  const [hours, minutes] = timeString.split(":");
  const hora = new Date();

  hora.setHours(hours, minutes);

  const formattedTime = hora.toLocaleTimeString("en-US", {
    hour: "2-digit",
    minute: "2-digit",
    hour12: true,
  });

  return formattedTime;
};
