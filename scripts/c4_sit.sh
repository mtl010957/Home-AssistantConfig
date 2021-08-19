#!/bin/bash

. /config/shell_secrets.sh

if [ $1 ] && [ "$2" = "set" ]
then
  COMMAND=$(($1 * 2 + 28))
elif [ $1 ] && [ "$2" = "call" ]
then
  COMMAND=$(($1 * 2 + 29))
fi

#echo "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=$COMMAND&onestep=0&sit=$COMMAND"
curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=$COMMAND&onestep=0&sit=$COMMAND"

exit 0



