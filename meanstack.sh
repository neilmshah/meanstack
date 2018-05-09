#!/bin/bash
script to install meanstack on ubunut 16 lts


#installing mongodb
echo starting mongodb installation
sudo apt-get install git -y
sudo apt-get install build-essential -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update -y
sudo apt-get install -y mongodb-org
service mongod status



#instaling node js

echo starting nodejs installation
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs npm
#instaling the rest of depentancies

git clone https://github.com/linnovate/mean.git
cd mean
npm install

#installing npm boswer gulp

#sudo npm install -g bower 
sudo npm install -g gulp


~                               