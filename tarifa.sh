#!/bin/bash
read -p "Introduce el numero de llamadas: " numLlamadas
tarifa1=100
costeTarifa2=$((50 + numLlamadas * 1))
costeTarifa3=$((20 + numLlamadas * 2))
if [ $costeTarifa2 -gt $tarifa1 ] && [ $costeTarifa3 -gt $tarifa1 ]; then
  echo "Te conviene la tarifa 1 con un coste de $tarifa1€ que incluyen llamadas ilimitadas."
elif [ $costeTarifa2 -lt $tarifa1 ] && [ $costeTarifa2 -lt $costeTarifa3 ]; then
  echo "Te conviene la tarifa 2 con un coste de $costeTarifa2€."
else
  echo "Te conviene la tarifa 3 con un coste de $costeTarifa3€."
fi
