#!/bin/bash
# Check if a filename was provided
if [ $# -eq 0 ]
then
  echo "Error: no filename provided"
  exit 1
fi

# Echo the provided filename
echo "The provided filename is: $1"


echo "==========================================================================================================================================================="
echo "============================ $1 ============================"
echo "==========================================================================================================================================================="


cp $1  caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
cd caliper-benchmarks

for i in {1..3}
do
  echo "$1  -  Iteration $i"
  echo "-------------------"
  echo ""
  npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml    
  cp report.html "../results/result_$(basename "$1" | cut -d'.' -f1)-Iteration_$i.html"done
cd ..
