# Microstack

## Requisitos previos

- Todas las máquinas deberán tener el servidor OpenSSH instalado (sudo apt-get install openssh-server).
- Las máquinas deben de haberse conectado por ssh entre si al menos una vez.
- Configuración de red estática.

## Modo de empleo

Este scrript se divide en dos partes, la parte host de control, en donde se despliega el nodo de control principal necesario para Openstack, y la segunda parte, donde se despliegan los nodos de cómputo.

Después de cumplir los requisitos previos, descargamos el repositorio y movemos el archivo **microstack.sh** al directorio home de nuestro nodo de control, a continuación, abrimos el script y lo adaptamos a nuestro entorno. Hecho esto, le añadimos el permiso de ejecución y lo ejecutamos, de forma automática se configurará nuestro equipo como un nodo de control y enviará a través de ssh el archivo que contiene el token necesario para incluir los nodos de cómputo en nuestro clúster junto con la segunda parte del script.
