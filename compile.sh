# 在 GEM5 目錄下混合 NVMAIN 編譯 GEM5

pushd ${HOME}/gem5-525ce650e1a5bbe71c39d4b15598d6c003cc9f9e/

scons EXTRAS=../NVmain build/X86/gem5.opt

popd
