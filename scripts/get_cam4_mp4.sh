#!/bin/bash

. /config/shell_secrets.sh

now=`date +%s`
echo $now
last_dirname=`ls -rtd 20?????? | tail -1`
echo $last_dirname
last_dirname_as_date="${last_dirname:0:4}-${last_dirname:4:2}-${last_dirname:6:2}"
echo $last_dirname_as_date
before=`date --date=${last_dirname_as_date} +%s`
#before=`expr $now - 86400`
echo $before

curl -s -k "$CAM4_URL/get_record_file.cgi?loginuse=$CAM4_USR&loginpas=$CAM4_PWD\
&startdate=1\
&enddate=1\
" |\
tr -d '\r' |\
tr -d ';' |\
sed 's/var record_num0/record_num0/' |\
grep -v 'var ' > times

. times

for (( i=0 ; i<${record_num0} ; i++ ))
do
  if [ $(( ${record_time0[$i]} > $before )) = 1 ]
  then
    timestamp=`date -d @${record_time0[$i]} +%Y%m%d%H%M%S`
    filename=${record_name0[$i]}
    outfilename=`basename ${filename} .264`_${timestamp}.mp4
    echo ${filename}
    dirname=`date -d @${record_time0[$i]} +%Y%m%d`
    echo ${dirname}
    mkdir -p ${dirname}
    echo ${record_time0[$i]}
    curl --http0.9 -s -k -o ${dirname}/${filename} "$CAM4_URL/livestream.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&streamid=4&filename=${filename}"
    ffmpeg -y -i ${dirname}/${filename} ${dirname}/${outfilename}
  fi
done



