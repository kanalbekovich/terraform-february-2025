#!/bin/bash

sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
wget https://wordpress.org/latest.tar.gz
tar zxf latest.tar.gz
sudo chown apache:apache wordpress/*
sudo chmod 755 wordpress/*
sudo mv wordpress/* /var/www/html
sudo systemctl restart httpd