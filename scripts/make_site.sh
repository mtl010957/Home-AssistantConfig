#!/bin/bash

. /config/shell_secrets.sh
datedir=`date +%Y%m%d`

echo "Cam6 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/3629cam6 ${USR_3629CAM6} ${PWD_3629CAM6} ${URL_3629CAM6}
echo "Cam8 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/3629cam8 ${USR_3629CAM8} ${PWD_3629CAM8} ${URL_3629CAM8}
echo "Cam6 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 3629cam6
echo "Cam8 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 3629cam8
echo "Cam6 Make MP4..." && /config/scripts/h265_to_mp4.sh ${datedir} 3629cam6
echo "Cam8 Make MP4..." && /config/scripts/h265_to_mp4.sh ${datedir} 3629cam8
echo "Cam6 Archiving Oldest..." && /config/scripts/move_oldest_cam_files.sh /media/3629cam6 /share/3629cam6_old
echo "Cam8 Archiving Oldest..." && /config/scripts/move_oldest_cam_files.sh /media/3629cam8 /share/3629cam8_old
