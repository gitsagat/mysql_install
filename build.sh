#!/bin/bash
echo "Install MySQL5.7.*..."

#Install MySQL
sudo apt update -y
sudo apt policy mysql-server -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7* -y
sudo mysql_secure_installation
echo "criar o usuário CREATE USER 'aredecrm'@'%' IDENTIFIED BY 'MinhaSenha'"
echo "add my.cnf [mysqld]"
echo "max_allowed_packet=32M"
echo "bind-address    = 0.0.0.0"
echo "sql-mode = "STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,ALLOW_INVALID_DATES""