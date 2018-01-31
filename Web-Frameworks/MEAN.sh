#!/bin/bash
set -e

echo "-----install wget-----"
yum install wget -y

echo "-----Fetching EPEL repo!-----"
yum install epel-release -y

echo "----Installing node!-----"
yum install install nodejs
echo "Checking node version!"
node --version
echo "-----trying npm-----"
npm version
echo "To us a different version of node use nvm to install and use different versions"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
echo "-----Verifying NVM-----"
nvm --version

echo "-----Installing git-----"
yum install git -y
git --version

echo "------installing wget-----"
yum install wget git -y


echo "-----grabbing Atom Text editor-----"
wget https://github.com/atom/atom/releases/download/v1.24.0-beta3/atom.x86_64.rpm
yum localinstall atom.x86_64.rpm -y

echo "-----Installing MongoDB-----"
echo "-----Installing Repo!-----"
touch  /etc/yum.repos.d/mongodb-org.repo
echo "[mongodb-org-3.4]" >> /etc/yum.repos.d/mongodb-org.repo
echo "name=MongoDB Repository" >> /etc/yum.repos.d/mongodb-org.repo
echo "baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/" >> /etc/yum.repos.d/mongodb-org.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/mongodb-org.repo
echo "enabled=1" >> /etc/yum.repos.d/mongodb-org.repo
echo "gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc" >> /etc/yum.repos.d/mongodb-org.repo

echo "Installing MongoDB(for real this time.)
yum install mongodb-org
systemctl start mongod
systemctl enable mongod

echo "systemctl is-enabled mongod; echo $?"



echo "All done MEAN stack enviroment is finished!"


