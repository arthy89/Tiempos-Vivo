import useSWR from "swr";
import api from "@/lib/axios";

class ParametrosService {
  static get(params = {}) {
    return useSWR(["api/parametro_event", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async put(reg) {
    return (await api.put(`api/opartida_params_update/${reg.id}`, reg)).data;
  }
}

export default ParametrosService;
