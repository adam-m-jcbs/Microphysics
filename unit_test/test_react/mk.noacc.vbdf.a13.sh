#!/usr/bin/bash
if [ "$1" = "--clean" ]
then
   make COMP=PGI OMP= NETWORK_DIR=aprox13 INTEGRATOR_DIR=VBDF clean
fi
make COMP=PGI OMP= NETWORK_DIR=aprox13 INTEGRATOR_DIR=VBDF -j6
