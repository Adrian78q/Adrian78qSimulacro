#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Debe especificar una nota numérica"
  exit 1
fi
nota=$1
if [ $nota -lt 5 ]; then
  echo "Suspendido"
elif [ $nota -lt 8 ]; then
  echo "Aprobado"
else
  echo "Sobresaliente"
fi
