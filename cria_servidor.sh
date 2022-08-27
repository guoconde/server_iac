#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando apache..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando projeto..."

cd /tmp
wget https://github.com/guoconde/GloboDriven/archive/refs/heads/main.zip

echo "Desempacotando projeto..."

unzip main.zip
cd GloboDriven-main

echo "Movendo arquivos..."

cp -R -f * /var/www/html

echo "Removendo arquivos desnecessários..."

rm /tmp/main.zip
rm -r -f /tmp/GloboDriven-main

echo "Finalizando script..."
