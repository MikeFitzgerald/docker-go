#!/bin/bash

# Stop containers
sh ./stop.sh

# Remove containers
docker rm app
docker rm db

# Remove images
docker rmi appi
docker rmi dbi
