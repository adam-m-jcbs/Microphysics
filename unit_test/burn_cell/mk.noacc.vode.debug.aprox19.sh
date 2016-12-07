#!/usr/bin/bash
if [ "$1" = "--clean" ]
then
   make COMP=PGI NDEBUG= NETWORK_DIR=aprox19 INTEGRATOR_DIR=VODE clean
fi
make COMP=PGI NDEBUG= NETWORK_DIR=aprox19 INTEGRATOR_DIR=VODE -j6
