import { EncryptStorage } from "encrypt-storage";

export const secureStorage = new EncryptStorage(
  process.env.NEXT_PUBLIC_SECURE_KEY,
  {
    storageType: "localStorage", // Puedes cambiar a 'sessionStorage' o cualquier otro método.
  },
);
