#!/bin/bash

echo "Updates && Upgrades"

sudo apt-get update && apt-get upgrade -y

echo "Various Instalations for WWW Server"

sudo apt-get apache2 -y
sudo apt-get unzip -y

echo "Change to /tmp"
cd /tmp

echo "Download from GitHub"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Unziping files"
sudo unzip main.zip


echo "Moving files to Apache WWW"
cd linux-site-dio-main
cp -R * /var/www/html
