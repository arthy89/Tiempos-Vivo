import { Input } from "@nextui-org/react";
import { useState } from "react";

const TimeInput = ({ label, value, onChange }) => {
  const [time, setTime] = useState(value || "00:00:00");

  const handleTimeChange = (e) => {
    const { value } = e.target;
    setTime(value);
    onChange(value);
  };

  return (
    <Input
      label={label}
      value={time}
      type="time"
      step="1" // Permite la inclusión de segundos
      onChange={handleTimeChange}
      hourCycle="24"
    />
  );
};

export default TimeInput;
