import { useState, useEffect } from "react";
import { Input } from "@nextui-org/react";

const SearchInput = ({ label, formKey, form, placeholder, initialValue }) => {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [search, setSearch] = useState(initialValue || "");
  const [items, setItems] = useState([]);
  // const [loading, setLoading] = useState(false);
  const [showOptions, setShowOptions] = useState(false);

  useEffect(() => {
    if (initialValue) {
      setSearch(initialValue); // Establece el valor inicial
    } else if (search.length > 0 && !form.data[formKey]) {
      fetchItems(search); // Realiza la búsqueda cuando no hay un valor inicial
    } else {
      setItems([]); // Limpia los resultados si no hay búsqueda activa
    }
  }, [search, initialValue]);

  const fetchItems = async (searchText) => {
    // setLoading(true);
    try {
      const response = await fetch(`${url}api/drivers?search=${searchText}`);
      const data = await response.json();
      setItems(data?.data || []);
    } catch (error) {
      console.error("Error fetching items:", error);
    } finally {
      // setLoading(false);
    }
  };

  const handleInputChange = (e) => {
    setSearch(e.target.value);
    form.setData(formKey, null); // Limpiar el valor del formulario
    setShowOptions(true);
  };

  const handleSelectItem = (item) => {
    setSearch(`${item.nombre} ${item.apellidos}`); // Mostrar el nombre en el input
    form.setData(formKey, item.id); // Asignar solo el ID al campo del formulario
    setShowOptions(false);
  };

  return (
    <div className="relative w-full">
      <Input
        label={label}
        labelPlacement="outside"
        isRequired
        variant="bordered"
        color={form.invalid(formKey) ? "danger" : "success"}
        type="text"
        placeholder={placeholder}
        value={search}
        onChange={handleInputChange}
        onFocus={() => setShowOptions(true)}
        onBlur={() => form.validate(formKey)}
        isInvalid={form.invalid(formKey)}
        errorMessage={form.errors[formKey]}
      />
      {showOptions && items.length > 0 && (
        <ul className="absolute z-30 w-full mt-1 overflow-y-auto bg-white border border-gray-200 rounded-md shadow-lg dark:bg-zinc-900 dark:border-zinc-800 max-h-40">
          {items.map((item) => (
            <li
              key={item.id}
            >
              <button
                className="w-full p-2 text-sm cursor-pointer hover:bg-gray-100 dark:hover:bg-zinc-700"
                onClick={() => handleSelectItem(item)}
              >
                {item.nombre} {item.apellidos}
              </button>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
};

export default SearchInput;
