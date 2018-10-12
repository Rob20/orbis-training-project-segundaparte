FROM node:10.10.0-slim

RUN mkdir app
COPY preguntas.md /app
COPY intro.md /app