#!/bin/bash

if [[ "$1"!=0 ]]; then
    echo "Hello, $1!"
else
    echo 'Usage: ./greet.sh <name>' 
fi
