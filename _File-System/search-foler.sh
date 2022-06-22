#! /bin/sh

# for loop
for filename in 'ls .'
do
   # 如果文件名包含 xml
  if echo "$filename" | grep "xml" 
  then
      # 输出文件名
      echo "$filename"
  fi
done