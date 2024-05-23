#!/bin/bash

attempt=0
limit=3

while [ $attempt -lt $limit ]
do
  read -s -p "Enter password: " pass
  echo
  read -s -p "Re-enter password: " pass2
  echo

  if [ "$pass" == "$pass2" ]
  then
    echo "Password was set"
    break
  
  else
    attempt=$(( attempt+1 ))
    if [ $attempt -ge $limit ]
    then
      echo "max number of attempts reached"
      exit 1
    else
    echo "Passwords don't match. Re-enter"
    fi
  fi
done
