#!/bin/bash
echo "Install MySQL5.7.*..."

#Install MySQL
sudo apt update -y
sudo apt policy mysql-server -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7* -y
echo "Press y|Y for Yes, any other key for No: [y]"
echo "Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: [1]"
echo "Estimated strength of the password: [25]"
echo "Remove anonymous users? (Press y|Y for Yes, any other key for No) : [y]"
echo "Disallow root login remotely? (Press y|Y for Yes, any other key for No) : [y]"
echo "Remove test database and access to it? (Press y|Y for Yes, any other key for No) : [y]"
echo "Reload privilege tables now? (Press y|Y for Yes, any other key for No) : [y]"

sudo mysql_secure_installation

echo "mysql -u root -p criar o usuário CREATE USER 'aredecrm'@'%' IDENTIFIED BY 'MinhaSenha'"
echo "sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf"
echo "add my.cnf [mysqld]"
echo "max_allowed_packet=32M"
echo "bind-address    = 0.0.0.0"
echo "sql-mode = "STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,ALLOW_INVALID_DATES""
echo "sudo systemctl restart mysql"
echo "sudo systemctl restart mysql"
echo "sudo systemctl stop mysql"
echo "sudo systemctl status mysql"