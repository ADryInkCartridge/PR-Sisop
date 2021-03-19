#!/bin/bash

count = 0
sum = 0

while read N
    do
        if [[ N == "\n" ]]
            then break
        else
            ((count++))
            ((sum+=$N))
        fi
    done
if [[$(($count%2)) == 0]]
    then echo "Anda belum beruntung, coba lagi."
else
    echo "Output: $sum"
fi

