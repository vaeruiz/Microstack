#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Funcion para conseguir token
function stacktoken(){ cat token.txt; }

# Variable para incluir token en la orden
var1=stacktoken

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

# Enviar por ssh orden al equipo de computo para entrar en el cluster
sshpass -p asirpacr2 ssh asirpacr@192.168.22.56 microstack init --auto --compute --join $var1
