#!//bin/bash

read -p "Enter the file name : " file 

if [[ -f "$file" ]]; then 
    echo "yes $file exist."
else 
    echo "$file does not exist."
fi
   