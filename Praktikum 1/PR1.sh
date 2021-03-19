#!/bin/bash

if [[ $(($#%2)) ==  0 ]]
    then
        echo "Anda belum beruntung, coba lagi."
    else
        for i in $*
            do ((a_number+=$i))
        done
    echo "Output: $a_number"
fi

