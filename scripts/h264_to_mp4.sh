#!/bin/bash

datedir=$1
cam=$2
echo ${datedir}
echo ${cam}

if ! command -v mkvmerge 2>&1 >/dev/null
then
    echo "mkvmerge could not be found, installing mkvtoolnix"
    apk add mkvtoolnix
fi

cd /media/${cam}/${datedir}/record
for infile in `ls *.264`
do
  outfile=`basename ${infile} .264`.mp4
  wavfile=`basename ${infile} .264`.wav
  mp3file=`basename ${infile} .264`.mp3
  mkvfile=`basename ${infile} .264`.mkv
  h264file=`basename ${infile} .264`.h264
  audiotsfile=`basename ${infile} .264`.audio.ts.txt
  videotsfile=`basename ${infile} .264`.video.ts.txt
  echo ${cam}
  echo ${infile}
  echo ${outfile}
  /config/scripts/conv264 ${infile}
  ffmpeg -i ${wavfile} -y ${mp3file}
  mkvmerge --output ${mkvfile} --timestamps "0:${videotsfile}" ${h264file} ${mp3file}
  ffmpeg -i ${mkvfile} -y ${outfile} && rm ${infile} ${wavfile} ${mp3file} ${mkvfile} ${h264file} ${audiotsfile} ${videotsfile}
done