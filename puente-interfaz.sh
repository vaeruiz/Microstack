#!/bin/bash

# Variables de entorno
NOMBREINTERFAZ=
IPINTERFAZ=/24

# Crear alias de los servicos microstack
sudo snap alias microstack.openstack openstack
sudo snap alias microstack.ovs-vsctl ovs-vsctl

# Puentear interfaz de red física con la interfaz virtual
ovs-vsctl add-port br-ex $NOMBREINTERFAZ
ip addr flush dev $NOMBREINTERFAZ
ip addr add $IPINTERFAZ dev br-ex
ip link set br-ex up
