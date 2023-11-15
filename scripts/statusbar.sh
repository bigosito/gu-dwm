#!/bin/sh

DATE=$(date +"%a %d %h %H:%M")
VOL=$( amixer get Master | awk -F'[][]' 'END{ print $2 }')
CPUUSE=$(cat /proc/loadavg | awk '{print $1}')
MEMUSE=$(free -h | awk '(NR==2){ print $3 }')
TEMPCPU=$(sed 's/000$/°C/' /sys/class/hwmon/hwmon0/temp2_input)

echo " CPU: $CPUUSE% | TEMP: $TEMPCPU | MEM: $MEMUSE | VOL: $VOL | $DATE"
