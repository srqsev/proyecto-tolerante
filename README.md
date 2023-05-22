poketable
# Pokeapi
Mi aplicación es una pokeapp que muestra a nuestros pokemones favoritos, el objetivo de la toleracia a fallos es que Docker respalde nuestro contenedor utilizando el puerto que le asignamos, de esta manera al teclear el nombre del puerto vamos a dirigiros a nuestra aplicación de Angular. 


## Desarrollo

Utilizando un archivo docker-compose para definir y ejecutar sus servicios. La sección de volúmenes en su archivo le permite especificar volúmenes acoplables que se pueden compartir entre varios contenedores. En su caso, está creando un volumen llamado nginx-server y montándolo en el directorio ./html en su máquina host y el directorio /usr/share/nginx/html/ dentro del contenedor nginx. Esto significa que cualquier cambio que realice en los archivos de cualquiera de los directorios se reflejará en el otro. Esto puede ser útil para propósitos de desarrollo o prueba.

Si desea utilizar un directorio diferente en su máquina host, como temp/my-data/, puede cambiar la primera parte de la definición del volumen para que coincida con esa ruta. Por ejemplo:



![tolerante1](https://github.com/srqsev/proyecto-tolerante/assets/11024621/647e37f9-30d4-4442-972e-e42da4be3ecc)






Volúmenes:

temp/mis-datos/:/usr/share/nginx/html/
No se necesita especificar nada en la sección de volúmenes en la parte inferior del archivo, a menos que desee usar un volumen con nombre en lugar de un montaje de enlace.

## Conclusión

En conclusión, Docker es una herramienta muy útil para crear y desplegar contenedores que pueden ejecutar tus aplicaciones de forma eficiente y consistente en diferentes entornos. Para hacer tu proyecto tolerante a fallos, puedes usar técnicas como el clúster de contenedores, la simulación de fallos y la arquitectura de microservicios, que te permiten mejorar la disponibilidad, la resiliencia y la escalabilidad de tu sistema. Docker también se puede integrar con otras herramientas y plataformas que facilitan el desarrollo, el monitoreo y la gestión de tus contenedores. 
Este curso fue muy interesante para poder hacer nuestras aplicaciones tolerante a fallos como bien dice el nombre.
