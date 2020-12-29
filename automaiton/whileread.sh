#!/usr/bash

# whileread.sh /etc/passwd
while IFS= read -r LINE; do
  echo "$LINE"
done < "$1"


while IFS= read -r user pass uid gid gecos home shell; do
  echo "$user $shell"
done < "$1"
