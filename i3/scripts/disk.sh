#!/usr/bin/bash

DISK_USAGE=$(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}')
echo "Disk: $DISK_USAGE"
