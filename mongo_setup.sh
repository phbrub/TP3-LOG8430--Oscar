#!/bin/bash

# Update the package list
sudo apt update

# Install Java Runtime Environment (JRE)
sudo apt install -y default-jre

# Install Java Development Kit (JDK)
sudo apt install -y default-jdk

# Install Maven build tool
sudo apt install -y maven

curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz

mkdir -p ycsb-0.17.0/database
cp mongo/docker-compose-mongodb.yml ycsb-0.17.0/database/
docker-compose -f ycsb-0.17.0/database/docker-compose-mongodb.yml up -d

