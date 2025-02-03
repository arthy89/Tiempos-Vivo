// Función para convertir una imagen a WebP
const imgToWebP = (file) => {
  return new Promise((resolve, reject) => {
    const img = new Image();
    const canvas = document.createElement("canvas");
    const ctx = canvas.getContext("2d");

    img.onload = () => {
      // Configurar el canvas con las dimensiones de la imagen
      canvas.width = img.width;
      canvas.height = img.height;

      // Dibujar la imagen en el canvas
      ctx.drawImage(img, 0, 0);

      // Convertir el canvas a WebP
      canvas.toBlob(
        (blob) => {
          if (blob) {
            // Crear un nuevo archivo en formato WebP
            const webpFile = new File([blob], file.name.replace(/\.[^/.]+$/, ".webp"), {
              type: "image/webp",
            });
            resolve(webpFile);
          } else {
            reject(new Error("No se pudo convertir la imagen a WebP"));
          }
        },
        "image/webp",
        0.8 // Calidad de la imagen WebP (0.8 = 80%)
      );
    };

    img.onerror = (error) => {
      reject(error);
    };

    // Cargar la imagen comprimida en el elemento <img>
    img.src = URL.createObjectURL(file);
  });
};

export default imgToWebP;