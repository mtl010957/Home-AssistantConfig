#!/bin/bash

. /config/shell_secrets.sh

curl -k --silent "$CAM2_URL/cgi-bin/CGIProxy.fcgi?cmd=getDevState&usr=$CAM2_USR&pwd=$CAM2_PWD" | grep -oP "(?<=motionDetectAlarm>).*?(?=</motionDetectAlarm>)"
exit 0

