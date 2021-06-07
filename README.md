# Microstack

## Requisitos previos

- Todas las máquinas deberán tener el servidor OpenSSH instalado (sudo apt-get install openssh-server).
- El host principal (nodo de control) tiene que haber establecido una conexión ssh con las máquinas de cómputo al menos una vez.
- Los equipos deberán de tener una configuración de red estática.

## Modo de empleo

Este script se divide en dos partes, la parte host de control, en donde se despliega el nodo de control principal necesario para Openstack, y la segunda parte, donde se despliegan los nodos de cómputo.

Después de cumplir los requisitos previos, descargamos el repositorio y movemos el archivo **microstack.sh** al directorio home de nuestro nodo de control, a continuación, abrimos el script y lo adaptamos a nuestro entorno. Hecho esto, le añadimos el permiso de ejecución y lo ejecutamos, de forma automática se configurará nuestro equipo como un nodo de control y enviará a través de ssh el archivo que contiene el token necesario para incluir los nodos de cómputo en nuestro clúster junto con la segunda parte del script.

Ahora pasaremos a los nodo de cómputo, antes de ejecutar el script **microstack2.sh** tenemos que añadirle el permiso de ejecución, una vez hecho podremos ejecutarlo.
