#!/bin/bash

dumpBase=/tmp/dump

# create dump folder 
#dd=`date +%m%d%y.%H%M`
dd=`date +%Y-%m-%d.%H-%M`

dumpDir=$dumpBase/dump-$dd
mkdir -p $dumpDir
cd $dumpDir

# dump mongo db
mongodump -u admin -p xxxx --db mydb

# tar the db dump
cd $dumpBase
tar czvf dump-${dd}.tgz dump-${dd}
rm -rf dump-${dd}
