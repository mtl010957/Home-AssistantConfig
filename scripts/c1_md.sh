#!/bin/bash

. /config/shell_secrets.sh

curl -k --silent "$CAM1_URL/cgi-bin/CGIProxy.fcgi?cmd=getDevState&usr=$CAM1_USR&pwd=$CAM1_PWD" | grep -oP "(?<=motionDetectAlarm>).*?(?=</motionDetectAlarm>)"
exit 0

