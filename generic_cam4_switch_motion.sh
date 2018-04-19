#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

if [ "$1" = "on" ]
then
  curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=0&onestep=0"
elif [ "$1" = "off" ]
then
  curl -k "$CAM4_URL/decoder_control.cgi?user=$CAM4_USR&pwd=$CAM4_PWD&command=1&onestep=0"
fi
exit 0


            url = 'set_alarm.cgi?next_url=alarm.htm';
            url += '&loginuse=' + top.cookieuser + '&loginpas=' + encodeURIComponent(top.cookiepass);
            url += '&motion_armed=' + (($("#motion_enable").attr("checked") == "checked") ? 1 : 0);
            url += '&input_armed=' + (($("#extern_enable").attr("checked") == "checked") ? 1 : 0);
            url += '&motion_sensitivity=' + (($("#motion_enable").attr("checked") == "checked") ? $("#motion_sensitivity").val() : 5);
            url += '&iolinkage=' + (($("#linkage_enable").attr("checked") == "checked") ? 1 : 0)
            url += '&mail=' + (($("#mail_enable").attr("checked") == "checked") ? 1 : 0);
            url += '&record=' + (($("#record_enable").attr("checked") == "checked") ? 1 : 0);
			url += '&pirenable='+(($("#pir_enable").attr("checked") == "checked") ? 1 : 0);
            url += '&ioin_level=' + $("#triger_level").val();
            url += '&ioout_level=' + $("#output_level").val();
			url += '&alarm_audio=' + $("#audio_sensitivity").val();
			//url += '&alarm_audio=' + (($("#voice_enable").attr("checked") == "checked") ? $("#audio_sensitivity").val() : 0);
            url += '&upload_interval=' + ((($("#ftp_enable").attr("checked") == "checked") && ($("#ftp_interval").val() != '')) ? $("#ftp_interval").val() : 0);
            url += '&schedule_enable=' + (($("#schedule_enable").attr("checked") == "checked") ? 1 : 0);

