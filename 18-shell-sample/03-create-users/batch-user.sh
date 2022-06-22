#!/bin/bash
USER_LIST=$@      # all arguments
USER_FILE=./user.info

#for USER in user{1...10}; do
for USER in $USER_LIST; do
  # id user-name returns user exist or not
  if ! id $USER&>/dev/null; then
    PASS=$(echo $RANDOM | md5sum | cut -c 1-8)
    useradd $USER
    echo $PASS | passwd --stdin $USER &>/dev/null   # hide the output
    echo "$USER $PASS" >> $USER_FILE
    echo "$USER created successful."
  else 
    echo "$USER already existed."
  fi
done


