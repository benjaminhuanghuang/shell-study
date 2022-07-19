# 读取a.csv文件, 在每一行开头添加一列（当前时间戳),输出到b.csv

awk -v timestamp="$(date +%s%N |cut -b 1-13)" ' { print timestamp","$0 }' a.csv > b.csv


awk '{ printf("%s,2012-02-29 16:13:00\n", $0); }' input.csv > output.csv