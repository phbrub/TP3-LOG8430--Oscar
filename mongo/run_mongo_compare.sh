printf "\nRunning Benchmarks on MongoDB...\n\n"

cd /home/ubuntu/TP3-LOG8430-Oscar/mongo

mkdir results

cd ycsb-0.17.0

for i in {1..3}
do

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_compare.csv
printf "Load - Workload A iteration $i\n\n" >> ../results/load_compare.csv
./bin/ycsb load mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0>> ../results/load_compare.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_compare.csv
printf "Run - Workload A iteration $i (TPS = 25)\n\n" >> ../results/run_compare.csv
./bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_compare.csv




printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_compare.csv
printf "Load - Workload B iteration $i\n\n" >> ../results/load_compare.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 >> ../results/load_compare.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_compare.csv
printf "Run - Workload B iteration $i (TPS = 25)\n\n" >> ../results/run_compare.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_compare.csv



printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/load_compare.csv
printf "Load - Workload C iteration $i\n\n" >> ../results/load_compare.csv
./bin/ycsb load mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0>> ../results/load_compare.csv

printf "\n----------------------------------------------------------------------------------\n\n" >> ../results/run_compare.csv
printf "Run - Workload C iteration $i (TPS = 25)\n\n" >> ../results/run_compare.csv
./bin/ycsb run mongodb-async -s -P workloads/workloadc -p mongodb.url=mongodb://192.168.5.2:27017/ycsb?w=0 -target 25 >> ../results/run_compare.csv


done

printf "MongoDB benchmarking was successfully completed. Results are available in the /results/ folder.\n\n"
