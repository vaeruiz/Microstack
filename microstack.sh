#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Variables para conexiones ssh
direccion1=userx@192.168.x.x
direccion2=user2x@192.168.x.x
direccion2=user3x@192.168.x.x
sshpass2=x
sshpass3=x

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
sshpass -p $sshpass2 scp token.txt $direccion2:/home/asirpacr2
sshpass -p $sshpass2 scp Microstack/microstack2.sh $direccion2:/home/asirpacr2
sshpass -p $sshpass3 scp token.txt $direccion3:/home/asirpacr3
sshpass -p $sshpass3 scp Microstack/microstack2.sh $direccion3:/home/asirpacr3

