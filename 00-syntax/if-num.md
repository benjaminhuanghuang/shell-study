[ integer1 -eq integer2 ]：如果integer1等于integer2，则为true。

[ integer1 -ne integer2 ]：如果integer1不等于integer2，则为true。

[ integer1 -le integer2 ]：如果integer1小于或等于integer2，则为true。

[ integer1 -lt integer2 ]：如果integer1小于integer2，则为true。

[ integer1 -ge integer2 ]：如果integer1大于或等于integer2，则为true。

[ integer1 -gt integer2 ]：如果integer1大于integer2，则为true。

Sample: Triangle
```
read a
read b
read c

if [[ $a -eq $b && $b -eq $c ]];then
    echo "EQUILATERAL"
elif [[ $a -eq $b || $a -eq $c || $b -eq $c ]];then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi
```


```
read a
read b
if [ $a -gt $b ];then
    echo "X is greater than Y"
elif [ $a -lt $b ];then
    echo "X is less than Y"
else
    echo "X is equal to Y"
fi
```


```
INT=-5

if [ -z "$INT" ]; then
  echo "INT is empty." >&2
  exit 1
fi


if [ $INT -eq 0 ]; then
  echo "INT is zero."
else
  if [ $INT -lt 0 ]; then
    echo "INT is negative."
  else
    echo "INT is positive."
  fi
  if [ $((INT % 2)) -eq 0 ]; then
    echo "INT is even."
  else
    echo "INT is odd."
  fi
fi
```
```
for i in {1..99};do
    if [ $((i%2)) -ne 0 ];then
        echo $i
    fi
done
```