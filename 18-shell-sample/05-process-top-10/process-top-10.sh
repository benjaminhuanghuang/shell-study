#!/bin/bash
#-----------------------------------------------------
# CPU sort descending
ps aux | awk '{print $3}' | sort -r | head -n 10


#-----------------------------------------------------
# CPU top 10
# use ps -sort
ps -eo pid,pcpu,peme,args --sort=-pcpu | head -n 10


#-----------------------------------------------------
# memory top 10
ps -eo pid,pcpu,peme, args --sort=-pmem | head -n 10