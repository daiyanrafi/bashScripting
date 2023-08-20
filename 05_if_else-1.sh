#!/bin/bash

read -p "Enter number: " NUM
echo

if [ $NUM -gt 100 ]
then
   echo "you can enter inside"
   sleep 3
   echo "your number is greater than 100"
   echo
   date
fi

echo "execution successfull"
