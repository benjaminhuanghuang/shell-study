# AWK
by inventor Al Ahol, Peter Winberger, Brian Kernighan

awk 依次处理文件的每一行，并读取里面的每一个字段。对于日志、CSV 那样的每行格式相同的文本文件，awk可能是最方便的工具。

```
# 格式
# awk 动作 文件名

$ awk '{print $0}' demo.txt    # $0代表当前行，执行结果是把每一行原样打印出来
```
## 命令行参数
-F 参数指定分隔符为冒号
```
  awk -F ':' '{ print $1 }' demo.txt
```


## Variable

$1..$n表示第几列 $0表示整个行。
```
$ awk '{print $1, $4}' netstat.txt


$ echo 'this is a test' | awk '{print $3}'
  a
```

变量NF表示当前行有多少个字段，因此$NF就代表最后一个字段。$(NF-1)代表倒数第二个字段。
```
$ echo 'this is a test' | awk '{print $NF}'
```


变量NR表示当前处理的是第几行。
```
$ awk -F ':' '{print NR ") " $1}' demo.txt
1) root
2) daemon
3) bin
4) sys
5) sync
```


## Function
```
$ awk -F ':' '{ print toupper($1) }' demo.txt
```
tolower()：字符转为小写。

length()：返回字符串长度。

substr()：返回子字符串。

sin()：正弦。

cos()：余弦。

sqrt()：平方根。

rand()：随机数


## Filter
```
$ awk '条件 动作' 文件名
```

Example: 
```
# print命令前面是一个正则表达式，只输出包含usr的行
awk -F ':' '/usr/ {print $1}' demo.txt

# 输出奇数行
$ awk -F ':' 'NR % 2 == 1 {print $1}' demo.txt

# 输出第三行以后的行
$ awk -F ':' 'NR >3 {print $1}' demo.txt

# 第三列的值为0 && 第6列的值为LISTEN
$ awk '$3==0 && $6=="LISTEN" ' netstat.txt
```


## If
```
$ awk -F ':' '{if ($1 > "m") print $1}' demo.txt
```


## awk的格式化输出
和C语言的printf没什么两样
```
  $ awk '{printf "%-8s %-8s %-8s %-18s %-22s %-15s\n",$1,$2,$3,$4,$5,$6}' netstat.txt
```