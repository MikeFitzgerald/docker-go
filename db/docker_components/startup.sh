#!/bin/bash

# Copy new CourseMill.cfg
mysqld --datadir=/var/lib/mysql --user=mysql &

mysql --user=root --password=root webapp < /root/webapp.sql

mysqld stop