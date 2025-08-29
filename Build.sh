#!/bin/sh
rm -rf gen
cmake -B gen/win -S . -DCMAKE_TOOLCHAIN_FILE="build-scripts/cmake-toolchain-zig-win.cmake" -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="../../gen/bin/win" && cmake --build gen/win --parallel $(nproc)
cmake -B gen/linux -S . -DCMAKE_TOOLCHAIN_FILE="build-scripts/cmake-toolchain-zig-linux.cmake" -DCMAKE_LIBRARY_OUTPUT_DIRECTORY="../../gen/bin/linux" && cmake --build gen/linux --parallel $(nproc)

