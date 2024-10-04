import api from "@/lib/axios";
import useSWR from 'swr';

class EventoService {
    static getData(params = {}) {
      return useSWR(['api/events', params], async ([url, params]) => {
        return (await api.get(url, { params })).data;
      });
    }

    // static async getData(params) {
    //     return (await api.get("/api/events", params)).data;
    // }

    static async get(id) {
      return (await api.get(`/api/events/${id}`)).data;
    }
}

export default EventoService;