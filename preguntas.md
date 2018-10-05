# orbis-training-project-segundaparte


## 1. ¿Qué importancia tiene los tags en un proyecto?
	Los tag son una manera de etiquetar estados de tu repositorio, que se usa comúnmente para indicar las versiones o releases de un proyecto.
	Las etiquetas nos sirven para lo que hemos visto hasta ahora, indicar dónde hemos liberado una versión, cambios importantes en el código, 
	o lo que consideremos importante.
	
## 2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
	Git usa dos tipos principales de etiquetas: ligeras y anotadas. Una etiqueta ligera es muy parecida a una rama que no cambia —un puntero a una 
	confirmación específica—. Sin embargo, las etiquetas anotadas son almacenadas como objetos completos en la base de datos de Git. 
	Tienen suma de comprobación; contienen el nombre del etiquetador, correo electrónico y fecha; tienen mensaje de etiquetado; y pueden estar firmadas y 
	verificadas con GNU Privacy Guard (GPG). Generalmente se recomienda crear etiquetas anotadas para disponer de toda esta información; 
	pero si por alguna razón quieres una etiqueta temporal y no quieres almacenar el resto de información, también tiene disponibles las etiquetas ligeras.

## 3. ¿Cómo se sube todos los tags de git que hay en mi local?
	Por defecto, el comando git push no transfiere etiquetas a servidores remotos. Tienes que enviarlas explicitamente a un servidor compartido después 
	de haberlas creado. Este proceso es igual a compartir ramas remotas —puedes ejecutar 
	### git push origin [tagname].

## 4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
	No es necesario. 
	Para poder subir una imagen a nuestra cuenta de docker hub es necesario autentificarnos
	
## 5. ¿Qué es y para qué sirve docker?
	Docker es un programa de código abierto que permite que una aplicación Linux y sus dependencias se empaqueten como un contenedor. 
	La virtualización basada en contenedores aísla las aplicaciones entre sí en un sistema operativo (OS) compartido.

## 6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
	La principal diferencia entre ambas tecnologías es que, por un lado, cuando virtualizamos un sistema operativo con VirtualBox instalamos y ejecutamos el 100% del sistema operativo, con su kernel, su entorno, sus librerías, sus dependencias, etc. Igual que instalamos Windows o Linux en un ordenador real se instala al completo en VirtualBox.
	Cuando utilizamos los contenedores de Docker, por ejemplo, la cosa cambia. En lugar de virtualizar un sistema operativo completo, solo creamos un pequeño 
	kernel con las librerías y dependencias necesarias para realizar nuestra tarea, obviando todo lo demás. De esta manera, los contenedores no son un sistema 
	operativo virtual como tal, sino más bien se entienden como “paquetes” que se ejecutan aislados sobre el sistema operativo principal, 
	pero sin depender de un sistema virtual.

	Cuando virtualizamos un sistema operativo utilizamos uno de los software de virtualización, como VirtualBox, 
	el cual se encarga de crear el hardware virtual, configurarlos y permitirnos trabajar con él. 
	Este tipo de máquinas virtuales trabajan directamente con un Hypervisor, y dentro de él se instala el sistema operativo completo, 
	no utilizando ninguna dependencia del sistema principal ni compartiendo dependencias entre otros sistemas virtuales.
	Cuando hablamos de contenedores la cosa cambia. Este tipo de tecnología no solo comparte la infraestructura y delega el resto al hipervisor, 
	sino que además depende, por un lado, del sistema operativo principal, y por otro de una herramienta encargada de hacer funcionar estos contenedores, 
	como, por ejemplo, Docker.

## 7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
      No
## 8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?

## 9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea	?

