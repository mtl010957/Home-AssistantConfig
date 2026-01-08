#!/bin/bash

awk '/^[0-9,A-F][0-9,A-F]:/{ print $0 }' | \
sed -E 's/ +/ /g' | \
jq -R -s '{clients: [split("\n")[:-1] | map(split("\u0020")) | .[] | { "addr": .[0], "txrate": .[3], "rxrate": .[4], "rssi": .[5], "tx": .[8], "rx": .[9], "chmode": .[10], "ipv4": .[11] }]}'

