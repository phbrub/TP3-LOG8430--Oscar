
#!/bin/bash


echo ===========================================================================================================================================================
echo =========================================================== INIT_READ =====================================================================================
echo ===========================================================================================================================================================
#read_init
cp init_read_config.yaml  caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
cp read.js caliper-benchmarks/benchmarks/samples/fabric/marbles/read.js

# for i in {1..5}
# do
#     echo "Iteration $i"
#     cd caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
#     tps=$(($i*10+25))
#     sed -i "s/\(\s*tps:\s*\)[0-9]*/\1$tps/" config.yaml
#     cd 
#     cd TP3-LOG8430-Oscar/hyperledger_fabric/caliper-benchmarks/
#     npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml    
# done

./monitor_resources.sh
cd caliper-benchmarks
npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml    
cd ..
./stop_monitor.sh

#read_init
cp init_read_update_config.yaml  caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
cp update.js caliper-benchmarks/benchmarks/samples/fabric/marbles/update.js

#Exécute une fois
echo ===========================================================================================================================================================
echo ==================================================== INIT_READ_UPDATE =====================================================================================
echo =========================================================================================================================================================== 
npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml
