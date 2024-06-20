#!/bin/bash
gem5_path=/home/hsuchen/gem5-525ce650e1a5bbe71c39d4b15598d6c003cc9f9e
result_path=/home/hsuchen/final_project/results/Q2

benchmark_quicksort=/home/hsuchen/final_project/benchmark/quicksort
benchmark_multiply=/home/hsuchen/final_project/benchmark/multiply

arg="\
    --cpu-type=TimingSimpleCPU\
    --caches --l2cache --l3cache\
    --mem-type=NVMainMemory\
    --nvmain-config=/home/hsuchen/NVmain/Config/PCM_ISSCC_2012_4GB.config\
    --output=${result_path}/std_output.txt\
"

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c ${gem5_path}/tests/test-progs/hello/bin/x86/linux/hello ${arg} > ${result_path}/output.txt

