# 读取a.csv文件, 在每一行开头添加一列（当前时间戳),输出到b.csv

awk -v timestamp="$(date +%s%N |cut -b 1-13)" ' { print timestamp","$0 }' a.csv > b.csv