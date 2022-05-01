#!/bin/bash

. /config/shell_secrets.sh

if [ $1 ]
then
  offset=$1
else
  offset=18000
fi
  
  
#echo "$CAM4_URL/set_datetime.cgi?next_url=datetime.htm?loginuse=$CAM4_USR&loginpas=$CAM4_PWD&ntp_svr=time.nist.gov&tz=${offset}&ntp_enable=1"
curl -k "$CAM4_URL/set_datetime.cgi?next_url=datetime.htm?loginuse=$CAM4_USR&loginpas=$CAM4_PWD&ntp_svr=time.nist.gov&tz=${offset}&ntp_enable=1"

exit 0


