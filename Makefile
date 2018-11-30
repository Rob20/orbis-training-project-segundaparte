install:
	    docker run -w /app -it -v "F:\docker\orbis-training-project-segundaparte":/app robespierre/orbis-training-docker-segundaparte:3.1.0 npm install
start:
	    docker run -p "1024:1024" -p "35729:1024" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app  robespierre/orbis-training-docker-segundaparte:3.1.0 npm start
release:
	    docker run -p "1024:1024" -p "35729:1024" -w /app -v "F:\docker\orbis-training-project-segundaparte":/app  robespierre/orbis-training-docker-segundaparte:3.1.0 npm run release
greet:
	    docker run -w /app -v "F:\docker\orbis-training-project-segundaparte\resources":/app robespierre/orbis-training-docker-segundaparte:3.1.0 ./saludo.sh
	        	
robot: 
		@echo 'Hola pendex!'