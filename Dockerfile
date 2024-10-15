# 1. Usar una imagen base de Node.js
FROM node:20-alpine


# 2. Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# 3. Copiar el archivo package.json y package-lock.json al contenedor
COPY package*.json ./

# 4. Instalar dependencias de la aplicación
RUN npm ci --only=production

# 5. Copiar el resto del código al contenedor
COPY . .

# 6. Exponer el puerto en el que la aplicación va a ejecutarse
EXPOSE 3000



# 8. Comando para ejecutar la aplicación
CMD ["node", "server.js"]
