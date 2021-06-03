#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Variable para conseguir token
TOKENSTACK=(cat token.txt)

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
microstack add-compute
