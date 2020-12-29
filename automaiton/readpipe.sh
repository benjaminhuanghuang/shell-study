#!/usr/bash
#
# cat /etc/passwd | ./readpipe.sh
#

if [[ -p /dev/stdin]]; then
  while IFS= read -r LINE; do
    echo "Line: $LINE"
  done
fi
