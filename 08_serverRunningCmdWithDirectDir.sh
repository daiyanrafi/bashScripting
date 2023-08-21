#!/bin/bash

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
date
#ls /var/run/httpd/httpd.pid &> /dev/null

if [ -f /var/run/httpd/httpd.pid ]
then
   echo "Httpd is running"
else
   echo "Httpd not running"
     sleep 3
   echo "Starting the process"
   systemctl start httpd
     if [ $? -eq 0 ]
        then
           echo "httpd is running"
        else
           echo "httpd is not running, look manually what happened"
  fi
fi
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo
