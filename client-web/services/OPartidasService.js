import useSWR from "swr";
import api from "@/lib/axios";

class OPartidasService {
  static getData(params = {}) {
    return useSWR(["api/opartidas", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async get(params) {
    return (await api.get("/api/opartidas", params)).data;
  }

  // static async put(reg) {
  //   return (await api.put(`api/parametro_update/${reg.id}`, reg)).data;
  // }

  static async put(params) {
    return (await api.put("api/opartidas_update", params)).data;
  }
}

export default OPartidasService;
