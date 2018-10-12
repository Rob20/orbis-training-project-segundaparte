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

