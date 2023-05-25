poketable
# Pokeapi
Mi aplicación es una pokeapp que muestra a nuestros pokemones favoritos, el objetivo de la toleracia a fallos es que Docker respalde nuestro contenedor utilizando el puerto que le asignamos, de esta manera al teclear el nombre del puerto vamos a dirigiros a nuestra aplicación de Angular. 


## Desarrollo

Utilizando un archivo docker-compose para definir y ejecutar sus servicios. La sección de volúmenes en su archivo le permite especificar volúmenes acoplables que se pueden compartir entre varios contenedores. En su caso, está creando un volumen llamado nginx-server y montándolo en el directorio ./html en su máquina host y el directorio /usr/share/nginx/html/ dentro del contenedor nginx. Esto significa que cualquier cambio que realice en los archivos de cualquiera de los directorios se reflejará en el otro. Esto puede ser útil para propósitos de desarrollo o prueba.

Si desea utilizar un directorio diferente en su máquina host, como temp/my-data/, puede cambiar la primera parte de la definición del volumen para que coincida con esa ruta. Por ejemplo:



![tolerante1](https://github.com/srqsev/proyecto-tolerante/assets/11024621/647e37f9-30d4-4442-972e-e42da4be3ecc)

![image](https://github.com/srqsev/proyecto-tolerante/assets/11024621/614c71ed-62bf-4736-8494-bf42c705e73e)

![image](https://github.com/srqsev/proyecto-tolerante/assets/11024621/2468d8f0-c442-4282-abd1-0aca1592b327)


Además de esto también podemos meterla en otro puerto y todo funcionará correctamente
![image](https://github.com/srqsev/proyecto-tolerante/assets/11024621/b35d34bc-8a50-4b7d-a363-841620a1b39f)


![GIF 5-22-2023 12-13-50 AM](https://github.com/srqsev/proyecto-tolerante/assets/11024621/6cf226f2-0dc1-4fd6-a4f4-6515635320ee)



También al crear una imágen con Docker estamos respaldando la información de nuestro proyecto, por lo tanto es más segura y confiable


Actualización:
Al hacer la observación la semana anterior para crear un balanceador lo que hice en un config crear un grupo ascendente llamado myappl que consta de tres servidores: 172.18.0.2, 172.18.0.3 y 172.18.0.4.
De forma predeterminada, utiliza el método de balanceo de carga por turnos, que distribuye las solicitudes de manera uniforme entre los servidores del grupo1.
Se basa en el puerto 80 y envía todas las solicitudes al grupo myappl usando la directiva proxy_pass1.
También define una ubicación especial /serv2/ que reescribe el URI de solicitud y lo envía a un servidor específico: 172.18.0.3.


![image](https://github.com/srqsev/proyecto-tolerante/assets/11024621/73e2266f-8f64-492f-9de2-81a911a21cd3)




Funcionando 

![Untitled video - Made with Clipchamp](https://github.com/srqsev/proyecto-tolerante/assets/11024621/7b56e7a2-11c0-4740-b39d-9d21a689c04a)




## Conclusión

En conclusión, Docker es una herramienta muy útil para crear y desplegar contenedores que pueden ejecutar tus aplicaciones de forma eficiente y consistente en diferentes entornos. Para hacer tu proyecto tolerante a fallos, puedes usar técnicas como el clúster de contenedores, la simulación de fallos y la arquitectura de microservicios, que te permiten mejorar la disponibilidad, la resiliencia y la escalabilidad de tu sistema. Docker también se puede integrar con otras herramientas y plataformas que facilitan el desarrollo, el monitoreo y la gestión de tus contenedores. 
Este curso fue muy interesante para poder hacer nuestras aplicaciones tolerante a fallos como bien dice el nombre.
