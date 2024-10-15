import api from "@/lib/axios";
import useSWR from 'swr';

class ConductorService {
    static getData(params = {}) {
      return useSWR(['api/drivers', params], async ([url, params]) => {
        return (await api.get(url, { params })).data;
      });
    }

    static async get(id) {
      return (await api.get(`api/drivers/${id}`)).data;
    }

    static async delete(id) {
      return await api.delete(`api/drivers/${id}`);
    }
}

export default ConductorService;