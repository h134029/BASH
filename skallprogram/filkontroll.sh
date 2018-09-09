#!/bin/sh

filename="$1"
sleep_interval=$2

if [ -f $1 ] ; then
file_exists="true"
last_modified_at=`stat -c %Y $1`
else
file_exists="false"
fi

while true
do
  if [ -f $1 ] ; then
  does_file_exist="true"
  else
  does_file_exist="false"
  fi
  if [ "$does_file_exist" = true ] && [ "$file_exists" = false ] ; then
    echo "Filen $filename ble opprettet"
    file_exists="true"
    break
  elif [ "$does_file_exist" = false ] && [ "$file_exists" = true ] ; then
    echo "Filen $filename ble slettet"
    file_exists="false"
    break
  elif [ "$file_exists" = true ] ; then
    new_modified_at=`stat -c %Y $1`
    if [ "$new_modified_at" != "$last_modified_at" ] ; then
      echo "Filen $filename ble endret"
      last_modified_at=$new_modified_at
      break
    fi
  fi
sleep $sleep_interval
done
