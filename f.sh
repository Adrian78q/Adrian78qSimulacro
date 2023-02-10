#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Debe especificar un nombre"
  exit 1
fi
nombre=$1
if ! grep -q $nombre notas.txt; then
  echo "El nombre no se encuentra en el archivo notas.txt"
  exit 1
fi
todo_aprobado=true
while read line; do
  nom=$(echo $line | awk '{print $1}')
  assig=$(echo $line | awk '{print $2}')
  nota=$(echo $line | awk '{print $3}')
  if [ "$nom" = "$nombre" ]; then
    if [ $nota -lt 5 ]; then
      calificacion="Suspendido"
      todo_aprobado=false
    elif [ $nota -lt 8 ]; then
      calificacion="Aprobado"
    else
      calificacion="Sobresaliente"
    fi
    echo "$assig: $calificacion"
  fi
done < notas.txt
if [ "$todo_aprobado" = true ]; then
  echo "$nombre tiene todo aprobado"
else
  echo "$nombre no tiene todo aprobado"
fi
