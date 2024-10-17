import api from "@/lib/axios";
import useSWR from 'swr';

class TIemposService {
    static getData(params = {}) {
      return useSWR(['api/tiempos', params], async ([url, params]) => {
        return (await api.get(url, { params })).data;
      });
    }

    static async get(id) {
      return (await api.get(`api/tiempos/${id}`)).data;
    }

    static async delete(id) {
      return await api.delete(`api/tiempos/${id}`);
    }
}

export default TIemposService;