#!/bin/bash

read -p "$(cat <<EOF
Please make a choice: 
-> Japanese or German cars? 
type J or G :  
EOF
)" choice

if [[ $choice == "J" ]]; then 
	for i in Toyota Honda Nissan 
	  do 
	    echo $i 
	  done	
elif [[ $choice == "G" ]]; then
	for j in Mersedes BMW Audi 
	  do 
	    echo $j
	  done 
else 
  echo "Invalid command, please try again :(" 
fi
