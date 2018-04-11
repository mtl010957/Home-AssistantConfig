#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

if [ "$1" = "on" ]
then
  curl -k "$CAM3_URL/cgi-bin/CGIProxy.fcgi?cmd=setMotionDetectConfig&isEnable=1&linkage=140&snapInterval=1&sensitivity=3&triggerInterval=0&schedule0=281474976710655&schedule1=281474976710655&schedule2=281474976710655&schedule3=281474976710655&schedule4=281474976710655&schedule5=281474976710655&schedule6=281474976710655&area0=1023&area1=1023&area2=1023&area3=1023&area4=1023&area5=1023&area6=1023&area7=1023&area8=1023&area9=1023&usr=$CAM3_USR&pwd=$CAM3_PWD"
elif [ "$1" = "off" ]
then
  curl -k "$CAM3_URL/cgi-bin/CGIProxy.fcgi?cmd=setMotionDetectConfig&isEnable=0&usr=$CAM3_USR&pwd=$CAM3_PWD"
else
  curl -k --silent "$CAM3_URL/cgi-bin/CGIProxy.fcgi?cmd=getMotionDetectConfig&usr=$CAM3_USR&pwd=$CAM3_PWD" | grep -oP "(?<=isEnable>).*?(?=</isEnable>)"
fi
exit 0



