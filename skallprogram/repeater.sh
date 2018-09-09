#!/bin/sh

repeater_Text="Denne teksten skal repeteres"
repeater_Antall=5

for i in $(seq $repeater_Antall)
do
  echo $repeater_Text
done
