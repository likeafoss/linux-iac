#!/bin/bash
echo "Atualizando o sistema"
apt update && apt upgrade -y
echo "Instalando o Apache e o unzip"
apt install apache2 unzip
echo "Baixando arquivo"
for i in https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip; do wget $i -O /tmp/main.zip; unzip /tmp/main.zip; cd linux-site-dio-main/; cp -R * /var/www/html; done
