import useSWR from "swr";

import api from "@/lib/axios";

class EspecialService {
  static getData(params = {}) {
    return useSWR(["api/especials", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  // static async get(id) {
  //   return (await api.get(`api/especials/${id}`)).data;
  // }
  static get(params = {}) {
    return useSWR(["api/especial_tiempos", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static getEspecials(params = {}) {
    return useSWR(["api/especial_etapa", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async getId(id) {
    return await api.get(`api/`);
    return (await api.get(`api/etapas/${id}`)).data;
  }

  static async postEspecial(data) {
    return await api.post("api/especials", data);
  }

  static async delete(id) {
    return await api.delete(`api/especials/${id}`);
  }
}

export default EspecialService;
