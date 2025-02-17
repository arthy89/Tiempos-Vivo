import toast from "react-hot-toast";

const Toast = (message, type = "success") => {
  if (type === "success") {
    toast.success(message, {
      position: "top-right",
    });
  } else if (type === "error") {
    toast.error(message, {
      position: "top-right",
    });
  }
};

export default Toast;