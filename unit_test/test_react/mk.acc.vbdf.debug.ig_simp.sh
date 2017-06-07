#!/usr/bin/bash
if [ "$1" = "--clean" ]
then
   echo "Cleaning ====================================================================================================================="
   make COMP=PGI NDEBUG= OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t clean
   #echo "Ordering ====================================================================================================================="
   #make COMP=PGI NDEBUG= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t ordered_link
fi
echo "Building ====================================================================================================================="
make COMP=PGI NDEBUG= OMP= NETWORK_DIR=ignition_simple INTEGRATOR_DIR=VBDF ACC=t -j6
