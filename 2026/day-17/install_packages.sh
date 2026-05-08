#!/bin/bash

packages=("nginx" "curl" "wget")

for i in ${packages[@]}
do 
    echo "package name : $i"
    if dpkg -s $i &> /dev/null && echo "installed" ; then
        echo "$i - package already installed"
        systemctl status $i
    else
        sudo apt-get update
        sudo apt install $i -y
    fi
done