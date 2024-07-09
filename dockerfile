# Usa una imagen base que contenga Node.js v20.9.0
FROM node:20.9.0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos del proyecto al directorio de trabajo del contenedor
COPY package*.json ./
COPY tsconfig.json ./

# Instala las dependencias del proyecto
RUN npm cache clean --force
RUN npm install --no-cache

# Compila tu código TypeScript a JavaScript
RUN npm run build

# Copia los archivos compilados de TypeScript (desde la carpeta dist)
COPY dist ./dist

# Expone el puerto en el que tu aplicación Express se ejecuta
EXPOSE 4000

# Comando para ejecutar tu aplicación cuando el contenedor se inicie
CMD ["node", "./dist/server/main.server.mjs"]