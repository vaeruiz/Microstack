#!/bin/bash

# Depuracion y parar script si falla una orden
#set -x
set -e

# Variables para conexiones ssh
direccion1=user@192.168.x.x
direccion2=user2@192.168.x.x
direccion3=user3@192.168.x.x
homedir2=/home/
homedir3=/home/
sshpass2=x
sshpass3=x

# Enviar por ssh archivo con token y continuacion del script
sshpass -p $sshpass2 scp token.txt $direccion2:$homedir2
sshpass -p $sshpass2 scp Microstack/microstack2.sh $direccion2:$homedir2
sshpass -p $sshpass3 scp token.txt $direccion3:$homedir3
sshpass -p $sshpass3 scp Microstack/microstack2.sh $direccion3:$homedir3
