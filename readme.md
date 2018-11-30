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

#Parte 8
#1. Crear un contenedor que ejecute el comando curl a la url expuesta del proyecto realizado en el paso 8.
docker-compose up -d
docker run --net=host node:10.10.0-slim curl http://localhost:1042/


docker exec -i -t robespierre/orbis-training-docker-segundaparte:3.1.0 /bin/bash
docker exec -ti robespierre/orbis-training-docker-segundaparte:3.1.0 sh -c "echo a && echo b"

#2. Crear otro servicio llamado test en el archivo docker-compose que realice lo mismo que el paso anterior

 version: "3"
 services:
   web:
       container_name: orbis-training-docker-segundaparte
       working_dir: /app
       ports:
           - "1042:1042"
           - "35729:35729"
       image: "robespierre/orbis-training-docker-segundaparte:3.1.0"
       command: "npm start"
   test:
       container_name: node-slim
       image: "robespierre/orbis-training-docker-segundaparte:3.1.0"
       command: "curl http://localhost:1042/"
#       depends_on:
#           - web

#Luego ejecutar el comando
	docker-compose up #desde el terminal Linux

#3. Crear un archivo llamado example.sh dentro de la carpeta resources

contenido de ejemplo.sh
#!/bin/bash
function saludo {
   echo "Hola docker"
 }
saludo

docker run -it -w /app/ -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 bash resources/saludo.sh

#4. Pasar una variable llamada NOMBRE, por el comando docker run y modificar el saludo a mostrar
#contenido de Saludo.sh
function saludo {
 echo "Hola Pendex!!!, tu nombre es ${NAME}"
}
saludo

docker run -it -w /app/ -v "F:\docker\orbis-training-project-segundaparte":/app -e NAME='Robespierre' robespierre/orbis-training-docker-segundaparte:3.1.0 bash resources/saludo.sh

#5. Mostrar en la consola el mensaje Ejecutando contenedor..., cada vez que uno cree un contenedor de la imagen de Docker.
#contenido de saludo.sh
function initialize_container {
 echo "Ejecutando contenedor...ejecutando..............>>>>>>>>>>>>>>>>>>"
}
# Item 5 : Mostrar en la consola el mensaje Ejecutando contenedor..., cada vez que uno cree un contenedor de la imagen de Docker.

docker run -w /app -v "D:\Capacitacion Docker\orbis-training-project\resources":/app --entrypoint ./ejec.sh josemsq/orbis-training-docker:2.3.0

initialize_container

docker run -it -w /app/ -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 bash resources/saludo.sh

#Parte 9
#1. Crear un archivo de nombre Makefile que contenga los targets: install, start, release y greet. De tal manera que cuando se ejecute en consola el comando make con el target indicado realice las siguientes acciones:

Makefile----->COntenido

install:
      docker run -w /app -it -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm install
start:
      docker run -p "1024:1024" -p "35729:1024" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app  robespierre/orbis-training-docker-segundaparte:3.1.0 npm start
release:
      docker run -p "1024:1024" -p "35729:1024" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app  robespierre/orbis-training-docker-segundaparte:3.1.0 npm run release
greet:
      docker run -w /app -v "F:\docker\orbis-training-project-segundaparte\resources":/app robespierre/orbis-training-docker-segundaparte:3.1.0 ./saludo.sh
            
ftf:

#Ejecutar 
make install
make start
make release
make greet

#2. Crear un nuevo target en el archivo Makefile, que tendrá el mismo nombre de la carpeta que contiene el archivo README.md

Este paso solo debe correr el comando: @echo 'Hola recursos!'
#contenido de Mkefile
robot: 
    @echo 'Hola pendex!'
#ejecutar desde terminal
make robot

#¿Qué sucede si le quito el @?

echo 'Hola pendex!'
Hola pendex!
