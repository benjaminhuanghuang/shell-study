#!/bin/bash

CPU_USAGE=$(top -b -n2 -p 1 | fgrep ("Cpu(s)" | tail -l | awk -F'id,' -v prefix=" '{ split($1, vs, ","), v=vs[length(vs)]; sub("%", "", v); printf "%s%.1f%%\n", prefix, 100-v}'))


DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPU_USAGE = "$DATE CPU: $CPU_USAGE"

echo $CPU_USAGE