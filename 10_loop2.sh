#!/bin/bash

MYUSERs="xx yy zz"

for usr in $MYUSERS
do
  echo "Adding user $usr"
  useradd $usr
  id $usr
  echo "%%%%%%%%%%%%%%%%%%%%%%%%%%"
done
