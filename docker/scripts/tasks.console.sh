#!/bin/bash

ProyectName=$(cat proyectname)

cd docker && docker-compose run --rm --user $(id -u):$(id -g) -w "/usr/src/$ProyectName" node $@
