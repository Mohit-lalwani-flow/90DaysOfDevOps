#!/bin/bash

for i in {1..10}
do 
    echo "$i"
done

echo ""
echo "trying more controlled version of the loop."

for (( num==1 ; num<=10 ; num++ ))
do
    echo "$num"
done