#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Funcion para conseguir token
#function stacktoken(){ cat token.txt; }

# Variables para conexiones ssh
direccion1=asirpacr@192.168.22.63
direccion2=asirpacr2@192.168.22.63
# Actualizar maquina y repositorios
apt update -y
apt upgrade -y

# Instalar sshpass
apt-get install sshpass -y

# Instalar microstack
snap install microstack --devmode --edge

# Inicializar nodo de control
microstack init --auto --control

# Obtener token para añadir nodo de computo
microstack add-compute > token.txt

# Enviar por ssh archivo con clave y script
sshpass -p asirpacr2 scp token.txt $direccion2:/home/asirpacr2
