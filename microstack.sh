#!/bin/bash

# Depuracion y parar script si falla una orden, descomentar set -x para ver que comandos se están ejecutando.
#set -x
set -e

# Actualizar repositorios
apt update -y

# Instalar sshpass
apt-get install sshpass -y

# Instalar microstack
snap install microstack --devmode --edge

# Inicializar nodo de control
microstack init --auto --control
echo -e
echo "La inicialización del nodo de control ha finalizado, creando token de acceso al cluster"
sleep 3s

# Obtener token para añadir nodo de computo
microstack add-compute > token.txt
sleep 3s

# Aviso de que ha terminado el despliegue y continuació
clear
echo "Se ha configurado la máquina como nodo controlador. Realice conexiones ssh desde el nodo de control al resto de nodos para poder llevar a cabo el traspaso de archivos."
echo "A continuación, configure y ejecute filepass.sh."
echo -e
read -p "Presione enter para salir"
