#!/bin/bash

#variable
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"

#install dependencies
echo "_______________________________"
echo "install package & [ > /dev/null ] means i dont want to see the output thats why redirect in different dir "
echo "_______________________________"
sudo yum install $PACKAGE -y > /dev/null
echo

#start service
echo "_______________________________"
echo "start service"
echo "_______________________________"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

#create temp dir
echo "_______________________________"
echo "start deployment"
echo "_______________________________"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html
echo

#Bounce Service
echo "_______________________________"
echo "resterting httpd service"
echo "_______________________________"
systemctl restart httpd
echo

#clean up
echo "_______________________________"
echo "removing temporary files"
echo "_______________________________"
rm -rf $TEMPDIR
echo

echo "_______________________________"
echo "to see status after installation and last line show the folder content"
echo "_______________________________"
sudo systemctl status httpd
ls /var/www/html
