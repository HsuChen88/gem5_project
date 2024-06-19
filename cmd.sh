#!/bin/bash
gem5_path=/home/hsuchen/final_project/gem5
result_path=/home/hsuchen/final_project/results/Q2

benchmark_quicksort=/home/hsuchen/final_project/benchmark/quicksort
benchmark_multiply=/home/hsuchen/final_project/benchmark/multiply

arg="
    --cpu-type=TimingSimpleCPU
    --caches --l2cache --l3cache
    --l3_assoc=2
    --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB
    --mem-type=NVMainMemory
    --nvmain-config=/home/hsuchen/final_project/NVmain/Config/PCM_ISSCC_2012_4GB.config
"

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c ${benchmark_quicksort} ${arg} > ${result_path}/output.txt

cp -r ${gem5_path}/m5out/* ${result_path}