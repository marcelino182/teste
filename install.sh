#!/bin/bash
# Author: [Marcelino Gonçalves de Macedo]
# Date: 2024-10-24
# Description: Este script irá instalar os pre-requisitos para o nosso aplicativo 'TO-DO List'
# e criar um novo diretório para o projeto. 
# Usage: sudo ./install.sh   
# Version: 1.0
# Dependencies:
# Referencia : https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04-pt#passo-2-instalando-o-mysql
#instalar utilizando o ubuntu , instalar o apache2, php, mariadb-server
echo "Atualização dos repositórios"
sudo apt update -y --qq
echo "ok"
echo "Instalação dos pacotes"
sudo apt install apache2 php mariadb-server -y -qq
echo "ok"
echo "Criando diretório para o projeto"
mkdir -p /var/www/todolist/
cd /var/www/todolist/
echo "ok"
echo "Ajustando as permissões na pasta"
sudo chown -R ubuntu:ubuntu /var/www/todolist/
echo "ok"
echo " ajustes - clona repositorio do git , ou baixar os fonte do aplicativo"
echo "Fazer a carga no banco de dados"
#sudo mysql -e 'source ./banco.sql
echo "editar o arquivo dir.conf do apache para reconhecer arquivo index.php como padrão"


