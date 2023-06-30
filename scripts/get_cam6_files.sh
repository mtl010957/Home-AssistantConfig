#!/bin/bash

. /config/shell_secrets.sh
datedir=$1

camdir=/media/3629cam6
dirs=`curl -u ${USR_3629CAM6}:${PWD_3629CAM6} "${URL_3629CAM6}/sd/${datedir}/" | grep '/</a>' | awk -F\> '{print $4}' | sed 's|/</a||'`

for dir in `echo ${dirs}`
do
  if (echo ${dir} | grep 'images')
  then
    outdir=${camdir}/${datedir}/images
  else
    outdir=${camdir}/${datedir}/record
  fi
  echo ${outdir}
  mkdir -p ${outdir}
  cd ${outdir}
  files=`curl -u ${USR_3629CAM6}:${PWD_3629CAM6} "${URL_3629CAM6}/sd/${datedir}/${dir}/" | grep '</a>' | awk -F\> '{print $4}' | sed 's|</a||' | grep -v 'title'`
  echo ${files}
  for file in `echo ${files}`
  do
    echo ${file}
    curl -O -u ${USR_3629CAM6}:${PWD_3629CAM6} "${URL_3629CAM6}/sd/${datedir}/${dir}/${file}"
  done
done
