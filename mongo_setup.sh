#!/bin/bash

# Update the package list
sudo apt update

# Install Java Runtime Environment (JRE)
sudo apt install -y default-jre

# Install Java Development Kit (JDK)
sudo apt install -y default-jdk

# Install Maven build tool
sudo apt install -y maven

cd mongo

curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz

mkdir -p ycsb-0.17.0/database
cp docker-compose-mongodb.yml ycsb-0.17.0/database/
docker-compose -f ycsb-0.17.0/database/docker-compose-mongodb.yml up -d

sleep 30

docker exec -it primary mongosh --eval 'rs.initiate({ _id: "myReplicaSet", members: [ {_id: 0, host: "primary"}, {_id: 1, host: "mongo1"}, {_id: 2, host: "mongo2"}, {_id: 3, host: "mongo3"} ] })'

sudo sh -c 'echo "192.168.5.2 primary" >> /etc/hosts'
sudo sh -c 'echo "192.168.5.3 mongo1" >> /etc/hosts'
sudo sh -c 'echo "192.168.5.4 mongo2" >> /etc/hosts'
sudo sh -c 'echo "192.168.5.5 mongo3" >> /etc/hosts'

cd "/home/ubuntu/TP3-LOG8430-Oscar/mongo/ycsb-0.17.0"

for file in "/home/ubuntu/TP3-LOG8430-Oscar/mongo/ycsb-0.17.0/workloads"/workload{a,b,c,d,e,f}
do
    echo "fieldcount=3" >> "$file"
    echo "fieldlength=100" >> "$file"
    printf "Changing workloads in $file\n"
done

# Télécharger et installer la bonne version de python
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar -xvf Python-2.7.18.tgz
cd Python-2.7.18/
./configure
make
sudo make install
sudo ln -sf /usr/local/bin/python2.7 /usr/bin/python

cd ..
npm rebuild grpc --force