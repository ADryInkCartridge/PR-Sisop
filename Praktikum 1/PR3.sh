#!bin/bash

LC_ALL=C awk -F, '{if ($5 == "Iris-setosa" && $1 >5.4) printf("Luas petal pada baris %d adalah %.2f\n",NR,$3*$4)}' "/home/bayu/Documents/Praktikum 1/iris.data" > "/home/bayu/Documents/Praktikum 1/PR3out.txt"

