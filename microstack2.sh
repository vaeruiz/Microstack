#!/bin/bash

# Depuracion y parar script si falla una orden
set -x
set -e

# Funcion para conseguir token
function stacktoken(){ cat token.txt; }

# Variable para llamar a la funcion stacktocken
tokenvar=stacktoken

# Actualizar repositorios
apt update -y

# Declarar equipo como nodo de computo
microstack init --auto --compute --join $tokenvar
