
#! /bin/bash
time=$(date +%I)
count=0
while test $count -lt $time; do
 echo -e "\a"
 sleep 1 # sleep for one second count=$[$count+1]
done
 
