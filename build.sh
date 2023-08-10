#!/bin/bash
echo "Install MySQL5.7.40..."

#Install MySQL
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
dpkg -i mysql-apt-config_0.8.12-1_all.deb

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
sudo apt update -y
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*