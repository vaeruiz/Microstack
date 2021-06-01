#!/bin/bash

# Depuracion
set -x

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
