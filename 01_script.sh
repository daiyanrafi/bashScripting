     status          outputs status of the vagrant machine
     suspend         suspends the machine
  1 #!/bin/bash
  2
  3 #install dependencies
  4 echo "_______________________________"
  5 echo "install package & [ > /dev/null ] means i dont want to see the output thats why redirect in different dir "
  6 echo "_______________________________"
  7 sudo yum install wget unzip httpd -y > /dev/null
  8 echo
  9
 10 #start service
 11 echo "_______________________________"
 12 echo "start service"
 13 echo "_______________________________"
 14 sudo systemctl start httpd
 15 sudo systemctl enable httpd
 16 echo
 17
 18 #create temp dir
 19 echo "_______________________________"
 20 echo "start deployment"
 21 echo "_______________________________"
 22 mkdir -p /tmp/webfiles
 23 cd tmp/webfiles
 24 echo
 25
 26 wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip > /dev/null
 27 unzip 2130_waso_strategy.zip > /dev/null
 28 sudo cp -r 2130_waso_strategy/* /var/www/html
 29 echo
 30
 31 #Bounce Service
 32 echo "_______________________________"
 33 echo "resterting httpd service"
 34 echo "_______________________________"
 35 systemctl restart httpd
 36 echo
 37
 38 #clean up
 39 echo "_______________________________"
 40 echo "removing temporary files"
 41 echo "_______________________________"
 42 rm -rf /tmp/webfiles
 43 echo
 44
 45 echo "_______________________________"
 46 echo "to see status after installation and last line show the folder content"
 47 echo "_______________________________"
 48 sudo systemclt status httpd
 49 ls /var/www/html
