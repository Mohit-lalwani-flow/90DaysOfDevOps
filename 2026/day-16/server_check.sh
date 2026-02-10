#!/bin/bash

read -p "Enter the service name : " service_name
read -p "Do you want to check the status? (y/n) : " check

if [[ $check == y ]]; then 
    echo "you want to check status of $service_name"
    sudo systemctl status $service_name
else 
    echo "you do not want to check status of $service_name ,Skipped."
fi