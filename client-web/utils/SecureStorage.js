let secureStorage = null;

if (typeof window !== "undefined") {
  const { EncryptStorage } = require("encrypt-storage");
  secureStorage = new EncryptStorage("your-secret-key", {
    storageType: "sessionStorage", // o localStorage
  });
}

export { secureStorage };