import api from "@/lib/axios";
import useSWR from 'swr';

class TripulacionService {
    static getData(params = {}) {
      return useSWR(['api/tripulacions', params], async ([url, params]) => {
        return (await api.get(url, { params })).data;
      });
    }

    static async get(id) {
      return (await api.get(`api/tripulacions/${id}`)).data;
    }

    static async delete(id) {
      return await api.delete(`api/tripulacions/${id}`);
    }
}

export default TripulacionService;