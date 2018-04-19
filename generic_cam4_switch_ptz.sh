#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

if [ "$1" = "on" ] && [ "$2" = "up" ]
then
  COMMAND=0
elif [ "$1" = "off" ] && [ "$2" = "up" ]
then
  COMMAND=1
elif [ "$1" = "on" ] && [ "$2" = "down" ]
then
  COMMAND=2
elif [ "$1" = "off" ] && [ "$2" = "down" ]
then
  COMMAND=3
elif [ "$1" = "on" ] && [ "$2" = "left" ]
then
  COMMAND=4
elif [ "$1" = "off" ] && [ "$2" = "left" ]
then
  COMMAND=5
elif [ "$1" = "on" ] && [ "$2" = "right" ]
then
  COMMAND=6
elif [ "$1" = "off" ] && [ "$2" = "right" ]
then
  COMMAND=7
fi

#echo "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=$COMMAND&onestep=0"
curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=$COMMAND&onestep=0"

exit 0



