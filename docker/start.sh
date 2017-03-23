#!/bin/bash

#docker-compose -f docker/docker-compose.build.yml build &&
docker-compose -f docker/docker-compose.yml down &&
docker-compose -f docker/docker-compose.yml up
