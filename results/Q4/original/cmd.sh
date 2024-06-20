#!/bin/bash
gem5_path=/home/hsuchen/gem5-525ce650e1a5bbe71c39d4b15598d6c003cc9f9e
result_path=/home/hsuchen/gem5_project/results/Q4/original

benchmark_quicksort=/home/hsuchen/gem5_project/benchmark/quicksort
benchmark_multiply=/home/hsuchen/gem5_project/benchmark/multiply

arg="\
    --cpu-type=TimingSimpleCPU\
    --caches --l2cache --l3cache\
    --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=128kB\
    --mem-type=NVMainMemory\
    --nvmain-config=/home/hsuchen/NVmain/Config/PCM_ISSCC_2012_4GB.config\
    --output=${result_path}/std_output.txt\
"

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c ${benchmark_quicksort} ${arg} > ${result_path}/output.txt

