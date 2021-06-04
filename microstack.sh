#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Variables para conexiones ssh
direccion1=asirpacr@192.168.22.63
direccion2=asirpacr2@192.168.22.58

# Actualizar repositorios
apt update -y

# Instalar sshpass
apt-get install sshpass -y

# Instalar microstack
snap install microstack --devmode --edge

# Inicializar nodo de control
microstack init --auto --control

# Obtener token para añadir nodo de computo
microstack add-compute > token.txt

# Enviar por ssh archivo con token
sshpass -p asirpacr2 scp token.txt $direccion2:/home/asirpacr2
