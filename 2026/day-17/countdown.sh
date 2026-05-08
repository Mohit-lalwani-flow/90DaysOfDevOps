#!/bin/bash

read -p "enter a number : " number
echo "number is $number"

count=$number

while [ $count -ge 0 ]
do
    echo "$count"
      ((count--))
done

echo "DONE!"




