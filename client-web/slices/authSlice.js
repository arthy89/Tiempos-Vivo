import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import axios from "axios";
import Cookies from "js-cookie";

import { secureStorage } from "@/utils/SecureStorage";

// Obtener el usuario desde las cookies
const getUserFromCookies = () => {
  const userCookie = Cookies.get("user");

  try {
    return userCookie ? JSON.parse(userCookie) : null;
  } catch (error) {
    console.error("Error parsing user cookie:", error);

    return null;
  }
};

// Estado inicial
const initialState = {
  user: getUserFromCookies(),
  token: Cookies.get("token") || null,
  loading: false,
  error: null,
};

// Thunk para manejar el login
export const loginUser = createAsyncThunk(
  "auth/loginUser",
  async ({ email, password }, { rejectWithValue }) => {
    try {
      const response = await axios.post(
        `${process.env.NEXT_PUBLIC_SERVER_URI}oauth/token`,
        {
          grant_type: "password",
          client_id: "1",
          client_secret: process.env.NEXT_PUBLIC_CLIENT_SECRET,
          username: email,
          password: password,
        },
      );

      // Guardar el token y los datos del usuario en Cookies
      const tokenString = "Bearer " + response.data.access_token;

      Cookies.set("token", tokenString, { path: "/" });

      return response.data; // Devolvemos la respuesta
    } catch (error) {
      return rejectWithValue(error.response.data);
    }
  },
);

// Thunk para obtener los datos del usuario desde el backend
export const fetchUserData = createAsyncThunk(
  "auth/fetchUserData",
  async (_, { rejectWithValue }) => {
    try {
      const response = await axios.get(
        `${process.env.NEXT_PUBLIC_SERVER_URI}api/user`,
        {
          headers: {
            Authorization: Cookies.get("token"), // Añadir el token en las cabeceras
          },
        },
      );

      // Guardar los datos del usuario en secureStorage y Cookies
      secureStorage.setItem("user", JSON.stringify(response.data.user));

      return response.data;
    } catch (error) {
      return rejectWithValue(error.response.data);
    }
  },
);

// Slice de autenticación
const authSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {
    // Acción para hacer logout
    logout: (state) => {
      state.user = null;
      state.token = null;
      Cookies.remove("token");
      Cookies.remove("user");
      secureStorage.removeItem("user");
    },
  },
  extraReducers: (builder) => {
    builder
      // Reducer para el login
      .addCase(loginUser.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(loginUser.fulfilled, (state, action) => {
        state.loading = false;
        state.token = action.payload.access_token;
      })
      .addCase(loginUser.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload || "Something went wrong";
      })
      // Reducer para obtener los datos del usuario
      .addCase(fetchUserData.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchUserData.fulfilled, (state, action) => {
        state.loading = false;
        state.user = action.payload.user;
      })
      .addCase(fetchUserData.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload || "Error fetching user data";
      });
  },
});

// Exportar las acciones
export const { logout } = authSlice.actions;

// Exportar el reducer por defecto
export default authSlice.reducer;
