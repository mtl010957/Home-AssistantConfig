#!/bin/bash

. /home/homeassistant/.homeassistant/shell_secrets.sh

curl -k "$CAM4_URL/get_params.cgi?loginuse=$CAM4_USR&loginpas=$CAM4_PWD"


