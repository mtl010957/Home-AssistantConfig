#!/bin/bash

. /config/shell_secrets.sh
ap=$1
slot=$2

if ! command -v sshpass 2>&1 >/dev/null
then
    apk add sshpass
fi

if [ "$ap" -eq "1" ]
then
 echo -e 'enable\nshow wlan '${slot}' list all sta\nexit' | sshpass -p ${AP1_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP1_USER}@${AP1_ADDR} | /config/scripts/devices_to_json.sh
elif [ "$ap" -eq "2" ]
then
 echo -e 'enable\nshow wlan '${slot}' list all sta\nexit' | sshpass -p ${AP2_PASS} ssh -tt -o StrictHostKeyChecking=no ${AP2_USER}@${AP2_ADDR} | /config/scripts/devices_to_json.sh
fi
