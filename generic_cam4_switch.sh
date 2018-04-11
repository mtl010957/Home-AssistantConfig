#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

if [ "$1" = "on" ]
then
  curl -k "$CAM4_URL/cgi-bin/CGIProxy.fcgi?cmd=setMotionDetectConfig&isEnable=1&linkage=140&snapInterval=1&sensitivity=3&triggerInterval=0&schedule0=281474976710655&schedule1=281474976710655&schedule2=281474976710655&schedule3=281474976710655&schedule4=281474976710655&schedule5=281474976710655&schedule6=281474976710655&area0=3&area1=511&area2=1023&area3=1023&area4=1023&area5=1023&area6=1023&area7=1023&area8=1023&area9=1023&usr=$CAM4_USR&pwd=$CAM4_PWD"
elif [ "$1" = "off" ]
then
  curl -k "$CAM4_URL/cgi-bin/CGIProxy.fcgi?cmd=setMotionDetectConfig&isEnable=0&$CAM4_USR&pwd=$CAM4_PWD"
else
  curl -k --silent "$CAM4_URL/cgi-bin/CGIProxy.fcgi?cmd=getMotionDetectConfig&usr=$CAM4_USR&pwd=$CAM4_PWD" | grep -oP "(?<=isEnable>).*?(?=</isEnable>)"
fi
exit 0



