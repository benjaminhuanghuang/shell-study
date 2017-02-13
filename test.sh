#!/bin/bash
#
#
#
#

filename=/home/test.txt
# -f  file exist or not
test -f $filename && echo 'exist' || echo 'not exist'
