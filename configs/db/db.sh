#!/bin/bash

cat /tmp/schema.sql | mysql -uroot -psystem

sed -i 's/bind-address.*/bind-address = 0.0.0.0/g' /etc/mysql/my.cnf
