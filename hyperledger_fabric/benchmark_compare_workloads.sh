
cp init_chopped_marble_names.js  caliper-benchmarks/benchmarks/samples/fabric/marbles/init.js   
cp read.js caliper-benchmarks/benchmarks/samples/fabric/marbles/read.js
cp update.js caliper-benchmarks/benchmarks/samples/fabric/marbles/update.js


# Loop through all files in the compare_workloads subfolder
for file in compare_workloads/*
do
  # Check if the file is a regular file
  if [ -f "$file" ]
  then
    # Run the benchmark_workload.sh script for the file
    ./run_benchmark_3_times.sh "$file"
  fi
done