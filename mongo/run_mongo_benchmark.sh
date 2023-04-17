printf "\nRunning Benchmarks on MongoDB...\n\n"

cd /home/ubuntu/TP3-LOG8430-Oscar/mongo

mkdir results

cd ycsb-0.17.0

for i in {1..3}
do

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload A iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload A iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload B iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload B iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload C iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload C iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload D iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload D iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload E iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload E iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_25.csv
printf "Load - Workload F iteration $i (TPS = 25)\n\n" >> ../results/load_tps_25.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/load_tps_25.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_25.csv
printf "Run - Workload F iteration $i (TPS = 25)\n\n" >> ../results/run_tps_25.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_tps_25.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload A iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload A iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload B iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload B iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload C iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload C iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload D iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload D iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload E iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload E iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_100.csv
printf "Load - Workload F iteration $i (TPS = 100)\n\n" >> ../results/load_tps_100.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/load_tps_100.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_100.csv
printf "Run - Workload F iteration $i (TPS = 100)\n\n" >> ../results/run_tps_100.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 100 >> ../results/run_tps_100.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload A iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload A iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload B iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload B iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload C iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload C iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload D iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload D iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload E iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload E iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_500.csv
printf "Load - Workload F iteration $i (TPS = 500)\n\n" >> ../results/load_tps_500.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/load_tps_500.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_500.csv
printf "Run - Workload F iteration $i (TPS = 500)\n\n" >> ../results/run_tps_500.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 500 >> ../results/run_tps_500.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload A iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload A iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload B iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload B iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload C iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload C iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload D iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload D iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadd -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload E iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload E iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloade -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_tps_1000.csv
printf "Load - Workload F iteration $i (TPS = 1000)\n\n" >> ../results/load_tps_1000.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/load_tps_1000.csv
printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_tps_1000.csv
printf "Run - Workload F iteration $i (TPS = 1000)\n\n" >> ../results/run_tps_1000.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadf -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 1000 >> ../results/run_tps_1000.csv

done

printf "MongoDB benchmarking was successfully completed. Results are available in the /results/ folder.\n\n"
