#!/bin/bash
# This program will create a field of 10 by 10 where ones and zeroes will alternate at each position. 
# There will be more ones on top, more zeroes on the bottom. Faster transtions on the left, slower transitions on the right. 

clear

# start time loop 
for a in $(seq 1 1 100)  
do 
# This variable starts with a high probability of getting a 1
clear
onemod=$((9))
# start y loop
for a in $(seq 1 1 15)  
do
flipmod=9
lastbit=$((RANDOM%2))
# Start x loop
for a in $(seq 1 1 15)  
do

rand=$((RANDOM%9))



if [[ $rand -lt $flipmod  ]] 

then 

echo -n $((RANDOM%2)) # $lastbit

elif [[ $rand -lt $onemod ]]

then

echo -n "1"
# Need to index a matrix to make this work as intended. 
lastbit=1
else 

echo -n "0"
lastbit=0


fi
echo  -n " "
flipmod=$((flipmod-1))


done
# finish x loop 

onemod=$((onemod - 1))
echo ''
done
# finish y loop 

sleep .5

done
# finish time loop
