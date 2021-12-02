#!/bin/bash
ls *.jpg | awk -F_ '{printf("%s\n",substr($3,1,8))}' | sort -u > ../dates
for dir in `cat ../dates`; do mkdir -p ${dir}; done
for dir in `cat ../dates`; do mv *_${dir}??????_?.jpg ${dir}; done

