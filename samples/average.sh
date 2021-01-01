read n
sum=0
for i in $(seq 1 $n);do
    read num
    ((sum=sum+num))
done
result=$(echo "$sum/$n"|bc -l)
echo $(printf "%.3f" $result)

