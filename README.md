# Microstack

## Requisitos previos

- Actualizar los repositorios de la máquina (sudo apt update).
- Todas las máquinas deberán tener el servidor OpenSSH instalado (sudo apt-get install openssh-server).
- Los equipos deberán de tener una configuración de red estática.

## Modo de empleo

Después de cumplir los requisitos previos, descargamos el repositorio:

> sudo git clone https://github.com/vaeruiz/Microstack.git

Y movemos los archivos **microstack.sh** y **filepass.sh** al directorio home de nuestro nodo de control:

> sudo mv Microstack/microsctak.sh ./

> sudo mv Microstack/filepass.sh ./

A continuación, le añadimos a **micorstack.sh** el permiso de ejecusión y lo ejecutamos:

> sudo chmod +x microstack.sh

> sudo ./microstack.sh

De forma automática se configurará nuestro equipo como un nodo de control, cuando termine debemos de iniciar conexiones ssh entre el nodo controlador y el resto de máquinas para que almacene sus claves, esto lo hacemos para que el nodo controlador pueda enviar el token del clúster al resto de máquinas adyacentes a las máquinas de trabajo.

> ssh user@direccion_ip

Una vez hechas las conexiones, añadimos el permiso de ejecución a **filepass.sh** y y lo editamos para configurar las variables con las direcciones de las máquinas correspondientes, hecho esto lo ejecutamos:

> sudo chmod +x filepass.sh

> sudo ./filepass.sh

De esta forma el nodo controlador enviará dos archivos:

- El token de acceso al clúster.
- El script de integración al clúster.

Cuando finalice el proceso encontraremos los archivos mencionados anteriormente en nuestros nodos de cómputo, lo único que tendremos que hacer es aplicar el permiso de ejecución al script y ejecutarlo


Hecho todo esto nuestro figurará como un nodo de control y habrá enviado a través de ssh el archivo que contiene el token necesario para incluir los nodos de cómputo en nuestro clúster junto con la segunda parte del script.

Ahora pasaremos a los nodo de cómputo, antes de ejecutar el script **microstack2.sh** tenemos que añadirle el permiso de ejecución.

> sudo chmod +x microstack.sh

Una vez hecho podremos ejecutarlo.

Cuando el script termine de ejecutarse, nos mostrará las credenciales de inicio de sesión en nuestro servidor OpenStack.
