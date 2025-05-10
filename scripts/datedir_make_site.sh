#!/bin/bash

. /config/shell_secrets.sh
datedir=$1

echo "Cam1 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/13821cam1 ${USR_13821CAM1} ${PWD_13821CAM1} ${URL_13821CAM1}
#echo "Cam6 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/3629cam6 ${USR_3629CAM6} ${PWD_3629CAM6} ${URL_3629CAM6}
#echo "Cam8 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/3629cam8 ${USR_3629CAM8} ${PWD_3629CAM8} ${URL_3629CAM8}
echo "Cam1 Make MP4 from Images..." && /config/scripts/images_to_mp4.sh ${datedir} 13821cam1
#echo "Cam6 Make MP4 from Images..." && /config/scripts/images_to_mp4.sh ${datedir} 3629cam6
#echo "Cam8 Make MP4 from Images..." && /config/scripts/images_to_mp4.sh ${datedir} 3629cam8
echo "Cam1 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 13821cam1
#echo "Cam6 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 3629cam6
#echo "Cam8 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 3629cam8
#echo "Cam1 Make MP4..." && /config/scripts/h265_to_mp4.sh ${datedir} 13821cam1
#echo "Cam6 Make MP4..." && /config/scripts/h265_to_mp4.sh ${datedir} 3629cam6
#echo "Cam8 Make MP4..." && /config/scripts/h265_to_mp4.sh ${datedir} 3629cam8

