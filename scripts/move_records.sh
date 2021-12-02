#!/bin/bash
ls *.m* | awk -F_ '{print $2}' | awk -F- '{print $1}' | sort -u > ../dates
for file in `ls *.mkv` ; do ffmpeg -y -i ${file} -codec copy `basename ${file} .mkv`.mp4 ; done
for dir in `cat ../dates`; do mkdir -p ${dir}; done
for dir in `cat ../dates`; do mv *_${dir}_*.mp4 ${dir}; done
for dir in `cat ../dates`; do mv *_${dir}_*.mkv ${dir}; done

