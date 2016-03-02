#!/bin/ash

## simple server to write temperature to socket using nc


while true; do

    cat /sys/class/hwmon/hwmon0/device/temp0_input

    sleep 5

    done | nc -l 4500

    