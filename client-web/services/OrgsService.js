import useSWR from "swr";

import api from "@/lib/axios";

class OrgsService
{
  static get(params = {}) {
    return useSWR(["api/orgs", params], async ([url, params]) => {
      return (await api.get(url, { params })).data;
    });
  }
}

export default OrgsService;