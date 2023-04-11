printf "\nRunning Benchmarks on MongoDB...\n\n"

cd /home/ubuntu/TP3-LOG8430-Oscar/mongo

mkdir results

cd ycsb-0.17.0

for i in {1..3}
do

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload A iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload A iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload B iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload B iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload C iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload C iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload D iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload D iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload E iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload E iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load.csv
printf "Load - Workload F iteration $i\n\n" >> ../results/load.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run.csv
printf "Run - Workload F iteration $i\n\n" >> ../results/run.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/run.csv

done

printf "MongoDB benchmarking was successfully completed. Results are available in the /results/ folder.\n\n"
