#!/bin/bash

cam=$1
dir=`date +%Y%m%d`
. /config/shell_secrets.sh
echo ${cam}
echo ${dir}

cd /media/${cam}/${dir}/record
for infile in `ls *.264`
do
  outfile=`basename ${infile} .264`.mp4
  echo ${infile}
  echo ${outfile}
  ffmpeg -y -i ${infile} -c copy ${outfile}
done