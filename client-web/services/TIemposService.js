import useSWR from "swr";

import api from "@/lib/axios";

class TIemposService {
  static getData(params = {}) {
    return useSWR(["api/tiempos", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async get(id) {
    return (await api.get(`api/tiempos/${id}`)).data;
  }

  static async delete(id) {
    return await api.delete(`api/tiempos/${id}`);
  }

  static async post(reg) {
    return (await api.post('api/generar_salidas', reg)).data;
  }
}

export default TIemposService;
