#!/bin/bash

. /config/shell_secrets.sh
ap=$1

if ! command -v sshpass 2>&1 >/dev/null
then
    apk add sshpass
fi

if [ "$ap" -eq "1" ]
then
 echo -e 'enable\nshow system uptime\nexit' | sshpass -p ${AP1_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP1_USER}@${AP1_ADDR} | awk '/system uptime:/ {if ($4 =="days")  print $3 ; else print "0"}'
elif [ "$ap" -eq "2" ]
then
 echo -e 'enable\nshow system uptime\nexit' | sshpass -p ${AP2_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP2_USER}@${AP2_ADDR} | awk '/system uptime:/ {if ($4 =="days")  print $3 ; else print "0"}'
fi
