#!/bin/bash

# make sure curr user has permission 
if [ "$USER" != "prod" ]; then
	echo
	echo "please switch to use 'prod' to run this command"
	echo
	exit
fi

# create a log file for this deployment 
if [ `hostname` = "app1" ]; then
	date +%m%d%y.%H%M > /export/home/scripts/
fi


exit 0
