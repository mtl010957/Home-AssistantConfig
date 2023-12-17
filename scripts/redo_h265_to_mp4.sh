#!/bin/bash

. /config/shell_secrets.sh

for datedir in `cat /config/scripts/redo_dates.txt`
do
  /config/scripts/get_cam_265_records.sh ${datedir} /media/3629cam6 ${USR_3629CAM6} ${PWD_3629CAM6} ${URL_3629CAM6} && \
  /config/scripts/h265_to_mp4.sh ${datedir} 3629cam6
  /config/scripts/get_cam_265_records.sh ${datedir} /media/3629cam8 ${USR_3629CAM8} ${PWD_3629CAM8} ${URL_3629CAM8} && \
  /config/scripts/h265_to_mp4.sh ${datedir} 3629cam8
done