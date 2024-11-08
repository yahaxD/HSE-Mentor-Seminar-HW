#!/bin/bash

read -p 'Enter a number: ' number

if [ $number -gt 0 ]; then
  echo "$number is positive"
  count=1
  while [ $count -le $number ]; do
    echo "$count"
    ((count++))
  done
elif [ $number -lt 0 ]; then
   echo "$number is negative"
else
   echo "$number is zero" 
fi
