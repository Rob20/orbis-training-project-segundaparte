
build:
    docker build -t robespierre/orbis-training-docker-segundaparte:3.1.0 .
push:
    docker push robespierre/orbis-training-docker-segundaparte:3.1.0 
up:
    #docker-compose up
	docker-compose -f ./docker-compose.yml up
login:
    docker login -u="$robespierre" -p="$R0B0tv2018@"