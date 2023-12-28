#!/bin/bash

# Input bilangan
bilangan=$1

# Cek apakah bilangan lebih dari atau sama dengan 2
if [ $bilangan -ge 2 ]; then

    # Cek apakah bilangan hanya habis dibagi 1 dan dirinya sendiri
    for i in $(seq 2 $((bilangan - 1))); do
        if [ $(($bilangan % $i)) -eq 0 ]; then
            echo "bilangan ini bukan bilangan prima"
            exit
        fi
    done

    echo "bilangan ini adalah bilangan prima"

else

    echo "bilangan tidak valid"

fi