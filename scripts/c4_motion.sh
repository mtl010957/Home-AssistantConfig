#!/bin/bash

. /config/shell_secrets.sh

if [ "$1" = "on" ]
then
  curl -k "$CAM4_URL/set_alarm.cgi?user=$CAM4_USR&pwd=$CAM4_PWD\
&motion_armed=1\
&input_armed=0\
&motion_sensitivity=8\
&iolinkage=0\
&mail=1\
&record=1\
&pirenable=1\
&ioin_level=0\
&ioout_level=0\
&alarm_audio=0\
&upload_interval=1\
&preset=0\
&schedule_enable=1\
&schedule_sun_0=-1\
&schedule_sun_1=-1\
&schedule_sun_2=-1\
&schedule_mon_0=-1\
&schedule_mon_1=-1\
&schedule_mon_2=-1\
&schedule_tue_0=-1\
&schedule_tue_1=-1\
&schedule_tue_2=-1\
&schedule_wed_0=-1\
&schedule_wed_1=-1\
&schedule_wed_2=-1\
&schedule_thu_0=-1\
&schedule_thu_1=-1\
&schedule_thu_2=-1\
&schedule_fri_0=-1\
&schedule_fri_1=-1\
&schedule_fri_2=-1\
&schedule_sat_0=-1\
&schedule_sat_1=-1\
&schedule_sat_2=-1\
"
elif [ "$1" = "off" ]
then
  curl -k "$CAM4_URL/set_alarm.cgi?user=$CAM4_USR&pwd=$CAM4_PWD\
&motion_armed=0\
&input_armed=0\
&motion_sensitivity=0\
&iolinkage=0\
&mail=0\
&record=0\
&pirenable=0\
&ioin_level=0\
&ioout_level=0\
&alarm_audio=0\
&upload_interval=0\
&preset=0\
&schedule_enable=0\
"
else
  curl -k --silent "$CAM4_URL/get_params.cgi?loginuse=$CAM4_USR&loginpas=$CAM4_PWD" | grep 'alarm_motion_armed=' | tr -d ';' | awk -F= '{print $2}'
fi
exit 0

