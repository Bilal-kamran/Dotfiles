#!/bin/bash
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)
if [ "$STATUS" == "Charging" ]; then
    echo "BAT  $BATTERY%"
else
    echo "BAT 🔋 $BATTERY%"
fi
