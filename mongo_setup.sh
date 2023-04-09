#!/bin/bash

# Update the package list
sudo apt update

# Install Java Runtime Environment (JRE)
sudo apt install default-jre

# Install Java Development Kit (JDK)
sudo apt install default-jdk

# Install Maven build tool
sudo apt install maven

curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz
cp docker-compose-mongo.yml ycsb-0.17.0/database/
