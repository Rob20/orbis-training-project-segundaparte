#FROM node:10.10.0-slim

#RUN mkdir app
#COPY preguntas.md /app
#COPY intro.md /app

FROM node:10.10.0-slim
RUN mkdir app
RUN mkdir app/resources
COPY package.json /app
COPY resources /app/resources
WORKDIR /app
RUN npm install