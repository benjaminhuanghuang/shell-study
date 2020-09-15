COUNT=1 

# IFS is the file seperator
while IFS='' read -r LINE
do
  echo "LINE $COUNT: $LINE"
  ((COUNT++))
done < "$1"