

echo ===========================================================================================================================================================
echo =========================================================== INIT_READ =====================================================================================
echo ===========================================================================================================================================================
#read_init
cp init_read_config.yaml  caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
cp read.js caliper-benchmarks/benchmarks/samples/fabric/marbles/read.js



# #Déployer le projet :
# cd 
# cd TP3-LOG8430-Oscar/hyperledger_fabric/caliper-benchmarks/

#Exécute une fois
sudo npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml


#read_init
cp init_read_update_config.yaml  caliper-benchmarks/benchmarks/samples/fabric/marbles/config.yaml
cp update.js caliper-benchmarks/benchmarks/samples/fabric/marbles/update.js

#Exécute une fois
echo ===========================================================================================================================================================
echo ==================================================== INIT_READ_UPDATE =====================================================================================
echo ===========================================================================================================================================================
sudo npx caliper launch manager --caliper-workspace . --caliper-benchconfig benchmarks/samples/fabric/marbles/config.yaml --caliper-networkconfig networks/fabric/v1/v1.4.4/2org1peercouchdb_raft/fabric-go-tls-solo.yaml
