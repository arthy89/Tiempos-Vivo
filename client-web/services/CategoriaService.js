import useSWR from "swr";

import api from "@/lib/axios";

class CategoriaService {
  static getData(params = {}) {
    return useSWR(["api/categorias", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async get(id) {
    return (await api.get(`api/categorias/${id}`)).data;
  }

  static async delete(id) {
    return await api.delete(`api/categorias/${id}`);
  }
}

export default CategoriaService;
