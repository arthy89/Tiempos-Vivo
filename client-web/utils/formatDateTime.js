export const formatDate = (dateString) => {
  const fecha = new Date(dateString);
  const formattedDate = fecha.toLocaleDateString("es-ES", {
    day: "2-digit",
    month: "short",
    year: "numeric",
  });
  return formattedDate;
};

export const formatTime = (timeString) => {
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