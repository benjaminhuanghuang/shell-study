#!/bin/bash
######  Number testing
# -eq	等于则为真
# -ne	不等于则为真
# -gt	大于则为真
# -ge	大于等于则为真
# -lt	小于则为真
# -le	小于等于则为真

#####  string testing
# =	        等于则为真
# !=	    不相等则为真
# -z 字符串	字符串的长度为零则为真
# -n 字符串	字符串的长度不为零则为真

X=""
if [ -n $X ]; then 	# shell将$X展开为空字符串，表达式[-n]返回真值（因为改表达式没有提供参数）
	echo "the variable X is not the empty string"
fi
if [ -n "$X" ]; then 	# 表达式展开为[ -n ""]，由于引号中内容为空，因此该表达式返回false值。
         echo "the variable X is not the empty string"
fi

#####  file testing
# -e 文件名	如果文件存在则为真
# -r 文件名	如果文件存在且可读则为真
# -w 文件名	如果文件存在且可写则为真
# -x 文件名	如果文件存在且可执行则为真
# -s 文件名	如果文件存在且至少有一个字符则为真
# -d 文件名	如果文件存在且为目录则为真
# -f 文件名	如果文件存在且为普通文件则为真
# -c 文件名	如果文件存在且为字符型特殊文件则为真
# -b 文件名	如果文件存在且为块特殊文件则为真

###### Logical operation
# and( -a ) , or ( -o ), not( ! )

num1=100
num2=100
if test $num1 -eq $num2
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi

filename=/home/test.txt
# -f  file exist or not
test -f $filename && echo 'exist' || echo 'not exist'

[]

cd /bin
if test -e ./notFile -o -e ./bash
then
    echo '有一个文件存在!'
else
    echo '两个文件都不存在'
fi