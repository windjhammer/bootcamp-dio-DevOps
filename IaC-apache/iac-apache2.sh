#! /bin/bash

echo "Iniciando o script..."
echo "Parte 1 - atualização do sistema"

apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Parte 2 - download do repositório"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Parte 3 - Movendo os arquivos do site"

cd linux-site-dio-main
cp -R * /var/www/html/
