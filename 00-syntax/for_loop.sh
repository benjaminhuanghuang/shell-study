#!/bin/sh


read n
sum=0
for i in $(seq 1 $n);do
    read num
    ((sum=sum+num))
done
result=$(echo "$sum/$n"|bc -l)
echo $(printf "%.3f" $result)



for var in 1 2  3
do
    echo "Welcome $var times"
done

for i in {1..10};do
    echo "Welcome $i times"
done

for i in {a..zip};do
    echo $i
done

for i in {1..10..3}
do
    echo "Welcome $i times"
done

for f in *.zip
do 
    unzip "$i"
done

# convert avi to mp4
for f in *.avi
do 
    ffmpeg -i "$i" "${i%.avi}.mp4"
done