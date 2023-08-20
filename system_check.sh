#!/bin/bash

echo "welcome $USER on $HOSTNAME"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')


echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "Ram is $FREERAM mb"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "current load $LOAD"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "free root partition is $ROOTFREE"
