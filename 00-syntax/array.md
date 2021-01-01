create array
```
  $ array[0]=val
  $ array[1]=val
  $ array[2]=val
```


Create array 2
```
  ARRAY=(value1 value2 ... valueN)

  # 等同于

  ARRAY=(
    value1
    value2
    value3
  )

  $ array=(a b c)
  $ array=([2]=c [0]=a [1]=b)

  $ days=(Sun Mon Tue Wed Thu Fri Sat)
  $ days=([0]=Sun [1]=Mon [2]=Tue [3]=Wed [4]=Thu [5]=Fri [6]=Sat)
```

用declare -a命令声明一个数组
```
  $ declare -a ARRAYNAME
```

read an array 
```
  read -a dice
```


```
  $ echo ${array[0]}
```

@和*是数组的特殊索引，表示返回数组的所有成员。
```
$ foo=(a b c d e f)
$ echo ${foo[@]}
a b c d e f
```
这两个特殊索引配合for循环，就可以用来遍历数组。
```
for i in "${names[@]}"; do
  echo $i
done
```

拷贝一个数组的最方便方法，就是写成下面这样。
```
$ hobbies=( "${activities[@]}" )
```

为新数组添加成员。
```
$ hobbies=( "${activities[@]" diving )
```

Bash 的新版本支持关联数组。关联数组使用字符串而不是整数作为数组索引。
```
  declare -A colors
  colors["red"]="#ff0000"
  colors["green"]="#00ff00"
  colors["blue"]="#0000ff"

  echo ${colors["blue"]}
```