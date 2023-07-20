#!/bin/bash

# Script to check the memory usage every 5 seconds and output the log to a .txt file
for i in {1..5}
do printf "Memory usage during loop $i at time: \n" >> memusage.txt
date | tee -a  memusage.txt
free | tee -a memusage.txt 
printf "\n" | tee -a memusage.txt 
sleep 5
done