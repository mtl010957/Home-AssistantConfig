#!/bin/bash

. /config/shell_secrets.sh
ap=$1

if ! command -v sshpass 2>&1 >/dev/null
then
    apk add sshpass
fi

if [ "$ap" -eq "1" ]
then
 echo -e 'enable\nshow mem status\nexit' | sshpass -p ${AP1_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP1_USER}@${AP1_ADDR} | awk '/usage/ {print substr($3, 1, length($3)-2)}'
elif [ "$ap" -eq "2" ]
then
 echo -e 'enable\nshow mem status\nexit' | sshpass -p ${AP2_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP2_USER}@${AP2_ADDR} | awk '/usage/ {print substr($3, 1, length($3)-2)}'
fi