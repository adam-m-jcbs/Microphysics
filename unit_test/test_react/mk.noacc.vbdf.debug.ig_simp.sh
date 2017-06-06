#!/usr/bin/bash
if [ "$1" = "--clean" ]
then
   make COMP=PGI NDEBUG= OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF clean
fi
make COMP=PGI NDEBUG= OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF -j6
