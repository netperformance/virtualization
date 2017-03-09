#!/bin/bash

# Apache 2 + Anpassung der index.html
apt-get install -y apache2
service apache2 stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service apache2 start
cd /vagrant
wget -q https://raw.githubusercontent.com/netperformance/virtualization/master/index.html