#!/bin/bash
set -e

echo "-----install python3 and django latest-----"
yum install python3 -y
python3 -V

echo "-----install nginx and starting it-----"
yum install nginx -y
service nginx start
service nginx enable

echo "-----Installing git-----"
yum install git -y
git --version

echo "------installing wget-----"
yum install wget git -y


echo "-----grabbing Atom Text editor-----"
wget https://github.com/atom/atom/releases/download/v1.24.0-beta3/atom.x86_64.rpm
yum localinstall atom.x86_64.rpm -y

echo "-----Installing postgres Databases-----"
yum install postgresql-server postgresql-contrib -y
postgresql-setup initdb
service start posgresql
service enable postgresql

echo "All Done! Django Stack enviroment build finished."

