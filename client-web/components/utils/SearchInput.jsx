import { useState, useEffect } from "react";
import { Input } from "@nextui-org/react";

const SearchInput = ({ label, formKey, form, placeholder, initialValue }) => {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  const [search, setSearch] = useState(initialValue || "");
  const [items, setItems] = useState([]);
  const [showOptions, setShowOptions] = useState(false);
  const [debounceTimeout, setDebounceTimeout] = useState(null); // Guardar timeout

  useEffect(() => {
    if (initialValue) {
      setSearch(initialValue);
    }
  }, [initialValue]);

  const fetchItems = async (searchText) => {
    try {
      const response = await fetch(`${url}api/drivers?search=${searchText}`);
      const data = await response.json();
      setItems(data?.data || []);
    } catch (error) {
      console.error("Error fetching items:", error);
    }
  };

  const handleInputChange = (e) => {
    const value = e.target.value;
    setSearch(value);
    form.setData(formKey, null);
    setShowOptions(true);

    // Limpiar timeout anterior
    if (debounceTimeout) {
      clearTimeout(debounceTimeout);
    }

    // Configurar un nuevo timeout
    const newTimeout = setTimeout(() => {
      if (value.length > 0) {
        fetchItems(value);
      } else {
        setItems([]);
      }
    }, 500); // Espera 500ms antes de ejecutar la búsqueda

    setDebounceTimeout(newTimeout);
  };

  const handleSelectItem = (item) => {
    setSearch(`${item.nombre} ${item.apellidos}`);
    form.setData(formKey, item.id);
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
            <li key={item.id}>
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
