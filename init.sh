#!/bin/bash

# Stop and remove all containers
sh ./clear.sh

# Build app image
docker build -t  appi ./app

# Create persistent data container; we will mount this to our MySQL container
# This keeps our MySQL database persistent if we re-create the MySQL container
docker create --name mysql_data \
    -v /var/lib/mysql \
    -v /etc/mysql/conf.d \
    mysql:5.7;

# Build the db image
docker build -t dbi ./db
