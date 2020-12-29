#!/bin/sh
read COUNT
a=1
add=0
while [ $a -le $COUNT ]
do
    add=`expr $add + $a`
    a=`expr $a + 1`
done
echo "add = $add" 


a = 0

until [ ! $a -lt 10 ]
do
   echo $a
   a = `expr $a + 1`
done