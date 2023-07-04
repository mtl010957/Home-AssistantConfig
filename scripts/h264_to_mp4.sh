#!/bin/bash

datedir=$1
cam=$2
echo ${datedir}
echo ${cam}

cd /media/${cam}/${datedir}/record
for infile in `ls *.264`
do
  outfile=`basename ${infile} .264`.mp4
  echo ${infile}
  echo ${outfile}
  ffmpeg -y -i ${infile} -c copy ${outfile} && rm ${infile}
done