#!/bin/bash
FILE=results_numt.txt
rm -f $FILE

echo "Number of threads, Array size, Non-SIMD, SIMD, Mult speedup, Non-SIMD sum, SIMD sum, Sum speedup" >> $FILE
for arraysize in 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 8388608
do
        for numt in 1 2 3 4 6 8 12
        do
                rm -f all04_numt
                g++ all04_numt.cpp -o all04_numt -lm -fopenmp -DARRAYSIZE=$arraysize -DNUMTHREADS=$numt
                ./all04_numt 2>> $FILE
        done
done