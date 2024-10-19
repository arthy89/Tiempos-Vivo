import useSWR from "swr";

import api from "@/lib/axios";

class UbigeoService {
  static getDepartamentos(params = {}) {
    return useSWR(["api/departamentos", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static getProvincias(params = {}) {
    return useSWR(["api/provincias", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static getDistritos(params = {}) {
    return useSWR(["api/distritos", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }
}

export default UbigeoService;
