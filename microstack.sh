#!/bin/bash

# Depuracion y parar script si falla una orden
#set -x
set -e

# Instalar sshpass
apt-get install sshpass -y

# Instalar microstack
snap install microstack --devmode --edge

# Inicializar nodo de control
microstack init --auto --control

# Obtener token para añadir nodo de computo
microstack add-compute > token.txt

# Aviso de que ha terminado el despliegue y continuació
echo -e
echo "Se ha configurado la máquina. Realice conexiones ssh desde el nodo de control al resto de nodos para poder llevar a cabo el traspaso de archivos y ejecute filepass.sh"
echo -e
read -p "Presione enter para salir"
