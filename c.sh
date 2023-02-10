#!/bin/bash
suspensos=0
aprobados=0
while read -r line; do
  nota=$(echo $line | awk '{print $3}')
  if [ $nota -lt 5 ]; then
    ((suspensos++))
  elif [ $nota -ge 5 ]; then
    ((aprobados++))
  fi
done < "notas.txt"
echo "Hay $suspensos suspensos y $aprobados aprobados."
