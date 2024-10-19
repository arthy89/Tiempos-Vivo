import useSWR from "swr";

import api from "@/lib/axios";

class EtapaService {
  static getData(params = {}) {
    return useSWR(["api/etapas", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async get(id) {
    return (await api.get(`api/etapas/${id}`)).data;
  }

  static async delete(id) {
    return await api.delete(`api/etapas/${id}`);
  }
}

export default EtapaService;
