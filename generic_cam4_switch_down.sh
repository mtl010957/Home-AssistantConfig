#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

if [ "$1" = "on" ]
then
  curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=2&onestep=0"
elif [ "$1" = "off" ]
then
  curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=3&onestep=0"
fi
exit 0



