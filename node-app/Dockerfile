# Usa la imagen oficial de Node.js
FROM node:18 AS build

WORKDIR /app

# Copia el archivo package.json y package-lock.json para instalar las dependencias
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto del código fuente
COPY ./src /app/src

# Expón el puerto que va a usar tu app (ajustar según sea necesario)
EXPOSE 3000

# Comando para correr la app de Node.js
CMD ["node", "src/index.js"]
