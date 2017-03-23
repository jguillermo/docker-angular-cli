#!/bin/bash

export DEV_UID=$(id -u)
export DEV_GID=$(id -g)

docker-compose -f docker-compose.build.yml build $1