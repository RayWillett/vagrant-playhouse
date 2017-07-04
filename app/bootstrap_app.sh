#! /usr/bin/env bash

apt-get update

wget -qO- https://bootstrap.pypa.io/get-pip.py >> get-pip.py
python get-pip.py
rm get-pip.py
pip install virtualenv
virtualenv env
. env/bin/activate
pip install -U flask

cp /vagrant/app/app.py .
ifconfig
