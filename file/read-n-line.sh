COUNT=1 

# IFS is the file seperator
while IFS='' read -r LINE
do
  echo "LINE $COUNT: $LINE"
  if [ $COUNT -ge 3 ]
  then 
    break
  fi
  ((COUNT++))
done < "$1"