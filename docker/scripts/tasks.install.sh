#!/bin/bash

ProyectName="MY_APP"
echo -n "Proyect name ($ProyectName)? "
read answer
if [ $answer ]; then
  ProyectName="$answer"
fi

echo "$ProyectName" > proyectname

cd docker && mkdir ../$ProyectName && docker-compose run --rm --user $(id -u):$(id -g) node ng new $ProyectName
