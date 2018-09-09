#!/bin/bash

declare -i antall
for ((antall=0;antall<$1;++antall))
do
  echo "$2"
done
