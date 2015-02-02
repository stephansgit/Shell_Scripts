#!/bin/bash

#this is the first attempt which does not seem to work properly....
#echo "$(date +"%Y-%m-%d_%H:%M") $(speedtest-cli --simple | grep -oP "(?<=Download: )[.0-9]+")" >> /home/himbeere/speedtest.log

speeddata=$(/usr/local/bin/speedtest-cli --simple | grep -oP "(?<=Download: )[.0-9]+")
speeddata+=" "
speeddata+=$(date +"%Y-%m-%d_%H:%M")

echo "$speeddata" >> /home/himbeere/speedtest/speedtest.log
