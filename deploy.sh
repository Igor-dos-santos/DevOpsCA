#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# install pm2 which is a production process manager for node.js with a built-in load balancer
sudo npm install -g pm2
# stop any instances of application running currently
pm2 stop example_app
# change directory into folder where application is downloaded
cd SimpleApplication/
#install application dependancies
npm install
echo $PRIVATE_KEY > myKey.cer
echo $SERVER > rootkey.csv
#start the application with the process name example_app using pm2
pm2 start .bin/www --name example_app