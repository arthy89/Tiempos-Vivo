import Echo from "laravel-echo";
import Pusher from "pusher-js";

window.Pusher = Pusher;

const echo = new Echo({
  broadcaster: "reverb",
  key: process.env.NEXT_PUBLIC_REVERB_APP_KEY,
  wsHost: process.env.NEXT_PUBLIC_REVERB_SERVER_HOST,
  wsPort: process.env.NEXT_PUBLIC_REVERB_SERVER_PORT ?? 6001,
  wssPort: process.env.NEXT_PUBLIC_REVERB_SERVER_PORT ?? 6001,
  forceTLS: (process.env.NEXT_PUBLIC_REVERB_SCHEME ?? "https") === "https",
  disableStats: true,
  enabledTransports: ["ws", "wss"], // Solo websockets
});

export default echo;