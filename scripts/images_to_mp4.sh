#!/bin/bash

datedir=$1
cam=$2
echo ${datedir}
echo ${cam}

if [ -d "/media/${cam}/${datedir}/images" ]
then
  cd /media/${cam}/${datedir}/images
  outfile=../record/${datedir}.mp4
  echo ${cam}
  echo ${outfile}
  ffmpeg -framerate 3 -pattern_type glob -i '*.jpg' -pix_fmt yuv420p -r 30 -y ${outfile}
fi