## Comando para crear imagen:
docker build -t robespierre/orbis-training-docker-segundaparte:0.1.0 .
## Comando para subir imagen al doker HUB
docker push robespierre/orbis-training-docker-segundaparte:0.1.0 

## Comando para agregar TAG
docker tag robespierre/orbis-training-docker-segundaparte:0.1.0 robespierre/orbis-training-docker-segundaparte:0.2.0 .

## Listar carpetas de un contenedor
docker run -i -t robespierre/orbis-training-docker:0.2.0 ls -ls /

## COmando para ejecutar el contenedor
docker build -t robespierre/orbis-training-docker:0.2.0 .

## comando para ex´poner un contenedor
docker run -d -p "1080:80" nginx:alpine

docker run -d -p "1080:80" robespierre/orbis-training-docker-segundaparte:2.0.1

#montar Volumen
docker run -it -w /app -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 ls -ls

#Installar NPM
docker run -w /app -it -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm install


docker run -p "3030:3030" -p "35729:3030" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm start

#cambiar puerto de 3030 a 1042
----> antes se debe editar el archivo packge json para modificar el puerto
docker run -p "1042:1042" -p "35728:1042" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm start

#10. Usando la imagen de docker, ejecutar npm run release
docker run -w /app -it -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm run release

docker run -d -p "8080:80" robespierre/orbis-training-docker-segundaparte:3.1.0
docker run -i -t robespierre/orbis-training-docker-segundaparte:3.1.0 ls -ls /



#11. Ejecutar el comando npm-start, pero esta vez usando docker-compose
##DockerFile---->>>>> Contenido
FROM node:10.10.0-slim
RUN mkdir app
RUN mkdir app/resources
COPY package.json /app
COPY resources /app/resources
WORKDIR /app
RUN npm install
#Luego ejecutar el docker file con el comando
docker build -t robespierre/orbis-training-docker-segundaparte:3.1.0 .

##Docker-COmpose---->>>>> Contenido
version: "3"
services:
   web:
       working_dir: /app
       ports:
           - "1042:1042"
       image: "robespierre/orbis-training-docker-segundaparte:3.1.0"
       command: "npm start"
#ejecutar docker compose
docker-compose up


