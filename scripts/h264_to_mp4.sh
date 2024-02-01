#!/bin/bash

datedir=$1
cam=$2
echo ${datedir}
echo ${cam}

cd /media/${cam}/${datedir}/record
for infile in `ls *.264`
do
  outfile=`basename ${infile} .264`.mp4
  wavfile=`basename ${infile} .264`.wav
  h264file=`basename ${infile} .264`.h264
  audiotsfile=`basename ${infile} .264`.audio.ts.txt
  videotsfile=`basename ${infile} .264`.video.ts.txt
  echo ${cam}
  echo ${infile}
  echo ${outfile}
  /config/scripts/conv264 ${infile}
  ffmpeg -y -i ${wavfile} -i ${h264file} ${outfile} && rm ${infile} ${wavfile} ${h264file} ${audiotsfile} ${videotsfile}
done