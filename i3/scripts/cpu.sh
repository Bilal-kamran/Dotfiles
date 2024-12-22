#!/usr/bin/bash

CPU_LOAD=$(grep -o "^[^ ]*" /proc/loadavg)

echo "CPU Load: $CPU_LOAD"
