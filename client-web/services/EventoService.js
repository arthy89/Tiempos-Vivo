import useSWR from "swr";

import api from "@/lib/axios";

class EventoService {
  static getData(params = {}) {
    return useSWR(["api/events", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  // static async getData(params) {
  //     return (await api.get("/api/events", params)).data;
  // }

  // events_less
  static getDataLess(params = {}) {
    return useSWR(["api/events_less", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static getTimes(params = {}) {
    return useSWR(["api/events_lite", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }

  static async getConsolidados(params) {
    return (await api.get("/api/events_consolidado", params)).data;
  }

  static async get(id) {
    return (await api.get(`api/events/${id}`)).data;
  }

  static async delete(id) {
    return await api.delete(`api/events/${id}`);
  }
}

export default EventoService;
