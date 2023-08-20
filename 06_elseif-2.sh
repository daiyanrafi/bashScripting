#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
   echo "1 active network"
elif [ $value -gt 1 ]
then
   echo "found multiple active"
else
   echo "No active"
fi


# Path: 07_case.sh
#!/bin/bash
