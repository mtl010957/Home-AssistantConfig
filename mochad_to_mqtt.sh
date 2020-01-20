#!/bin/bash

nc localhost 1099 | awk ' { system("/usr/bin/mosquitto_pub -t X10/"$6" -m "$8) } '
