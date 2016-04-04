#!/bin/ash

## simple server to write temperature to socket using nc and Gateworks Laguna board

# 
## Add to rc.local: 
# /path/to/server.sh &

# Then:  chmod u+x server.sh


while true; do

    cat /sys/class/hwmon/hwmon0/device/temp0_input

    sleep 5

    done | nc -l -p 4500

# Value is in Celsius / 10 
