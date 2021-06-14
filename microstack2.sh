#!/bin/bash

# Depuracion y parar script si falla una orden
#set -x
set -e

# Funcion para conseguir token
function stacktoken(){ cat token.txt; }

# Variable para llamar a la funcion stacktocken
tokenvar=$(stacktoken)

# Instalar microstack
snap install microstack --devmode --edge

# Declarar equipo como nodo de computo
microstack init --auto --compute --join $tokenvar

# Proceso de información acerca del inicio de sesión y cierre del script
echo -e
echo "Proceso de despliegue de nodo de cómputo acabado."
sleep 3s
clear
echo "Recuperando credenciales de inicio de sesion en el servidor..."
sleep 3s
clear
read -p "Pulse enter para mostrar las credenciales de inicio de sesión y finalizar la instalación"
clear
echo "El usuario es:"
echo "admin"
echo "La contraseña es:"
snap get microstack config.credentials.keystone-password
