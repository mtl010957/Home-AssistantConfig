#!/bin/bash
ls *.jpg | awk -F_ '{print $2}' | awk -F- '{print $1}' | sort -u > ../dates
for dir in `cat ../dates`; do mkdir -p ${dir}; done
for dir in `cat ../dates`; do mv *_${dir}-*.jpg ${dir}; done

