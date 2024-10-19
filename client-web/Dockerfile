FROM node:18-alpine

# Establecer directorio de trabajo
WORKDIR /app

RUN npm install -g nextui-cli

# Copiar los archivos de package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Construir la aplicación para producción
# RUN npm run build

# Exponer el puerto 3000 (puerto predeterminado para Next.js)
EXPOSE 3000

# Ejecutar la aplicación Next.js
CMD ["npm", "start"]