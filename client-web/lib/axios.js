import Axios from "axios";
import { client } from "laravel-precognition-react";
const api = Axios.create({
  // baseURL: process.env.APP_API_URL,
  baseURL: process.env.NEXT_PUBLIC_SERVER_URI,
  //   baseURL: 'http://sigetec-admin.test/',
  // baseURL: 'http://tev.test/',

  // headers: {
  //   'X-Requested-With': 'XMLHttpRequest',
  // },
});

client.use(api);
export default api;
