#!/bin/bash

. /config/shell_secrets.sh

curl -k --silent "$CAM3_URL/cgi-bin/CGIProxy.fcgi?cmd=getDevState&usr=$CAM3_USR&pwd=$CAM3_PWD" | grep -oP "(?<=motionDetectAlarm>).*?(?=</motionDetectAlarm>)"
exit 0

