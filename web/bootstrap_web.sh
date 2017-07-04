#! /usr/bin/env bash

apt-get update
apt-get install -y nginx

sudo rm /etc/nginx/sites-enabled/default
cp /vagrant/web/app_site /etc/nginx/sites-enabled/

sudo service nginx start

ifconfig