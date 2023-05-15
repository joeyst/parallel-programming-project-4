#!/bin/bash
rm -f results.txt

echo "Array size, Non-SIMD, SIMD, mult speedup, Non-SIMD sum, SIMD sum, sum speedup" >> results.txt
for arraysize in 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 8388608
do
        rm -f all04
        g++ all04.cpp -o all04 -lm -fopenmp -DARRAYSIZE=$arraysize
        ./all04 2>> results.txt

done