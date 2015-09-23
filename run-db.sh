#!/bin/bash

docker run -dit \
    --name db \
    -p 3306:3306 \
    --volumes-from mysql_data \
    -v //var/lib/mysql:/var/lib/mysql \
    -v /$(pwd)/db/docker_components/conf.d:/etc/mysql/conf.d \
    -e MYSQL_USER=mysql \
    -e MYSQL_PASSWORD=mysql \
    -e MYSQL_DATABASE=webapp \
    -e MYSQL_ROOT_PASSWORD=root \
    mysql:5.7;
    