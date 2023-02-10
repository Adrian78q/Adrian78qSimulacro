#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Debe especificar un nombre y una nota numérica"
  exit 1
fi
nombre=$1
nota=$2
calificacion=$(./d.sh $nota)
echo "$nombre: $calificacion"
