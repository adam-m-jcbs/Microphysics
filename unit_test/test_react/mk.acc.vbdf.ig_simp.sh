#!/usr/bin/bash
if [ "$1" = "--clean" ]
then
   echo "Cleaning ====================================================================================================================="
   make COMP=PGI OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t clean
   #echo "Ordering ====================================================================================================================="
   #make COMP=PGI NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t ordered_link
fi
echo "Building ====================================================================================================================="
make COMP=PGI OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t -j6
