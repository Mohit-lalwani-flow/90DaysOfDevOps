#!/bin/bash

list=("apple" "banana" "strawberry" "cherry" "guava")

echo "given list of fruit is $list"

for  i in ${list[@]}
do 
    echo "Color : $i"
done


