#!/bin/bash
echo "Skriv inn hendelse"
read hendelse
tall=$(grep $hendelse $1 | cut f2)
for i in $tall
do ((sum+=i))
done
echo "Summen er: " $sum
