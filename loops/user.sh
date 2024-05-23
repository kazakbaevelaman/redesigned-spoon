#!/bin/bash


groupadd devops 

for user in tim eric brad ann 
do 
  useradd $user
  usermod -aG devops $user 
done  
