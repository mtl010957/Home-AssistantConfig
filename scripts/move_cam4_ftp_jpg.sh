#! /bin/bash

. /config/shell_secrets.sh

for file in `curl --user ${CAM4_FTP_LOGIN} --list-only ftp://homeassistant/ | grep \.jpg`
do
  curl --user ${CAM4_FTP_LOGIN} --output /config/www/3629cam4/${file} ftp://homeassistant/${file} && curl --user ${CAM4_FTP_LOGIN} --quote "DELE ${file}" ftp://homeassistant
done

