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
sleep 2s
echo "Proceso de despliegue de nodo de cómputo acabado"
echo "Mostranto credenciales de inicio de sesion en el servidor"
sleep 4s
clear
echo "El usuario es:"
echo "admin"
echo "La contraseña es:"
snap get microstack config.credentials.keystone-password
