#!/bin/bash

declare -i sum=0
declare -i number

echo "Skriv inn tall. Tast enter mellom tallene og avslutt med ctrl+d"
while read number
do
  (( sum+=number ))
done
echo "Summen er $sum"
