.SILENT:
all04: all04.cpp
        g++ all04.cpp -o all04 -lm -fopenmp

.SILENT:
run:
        clear
        make all04
        ./all04
        rm all04
