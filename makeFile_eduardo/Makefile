include Makefile-task.mk

install:
	docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  $(NAME_IMAGE):4.0.0 npm install
start:
	docker run -p "3030:3030" -p "35729:3030" -w /app -v "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  euechi/orbis-training-docker:$(DOCKER_TAG) npm start
release:
	docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  $(DOCKER_IMAGE) npm run release
greet:
	docker run -w /app -v  "D:\Eduardo\Capacitaciones\2.Docker\Ejercicios\orbis-training-project":/app  euechi/orbis-training-docker:4.2.0 ./example.sh; saludo a $(NOMBRE)
orbis-training-project:
	@echo 'Hola recursos!'
	
NAME_IMAGE ?= euechi/orbis-training-docker
DOCKER_TAG ?= 4.0.0
DOCKER_IMAGE ?= $(NAME_IMAGE)$(DOCKER_IMAGE)
NOMBRE ?= Eduardo