#
- from [玩转Linux命令行 - 事件处理 - EP3](https://zxi.mytechroad.com/blog/linux/linux-cmd-event-processing-ep3/）



## 测试读取速度
```
  cat *.pgn > /dev/null
```


## 统计文件
```
  cat *.pgn | grep "Result" | sort | uniq -c
```
sort 对文本进行排序
uniq -c  统计每个不同行出现对次数，仅对已排序对文件有效


## 使用awk
```
cat *.pgn | grep "Result" | awk '{ split($0, a, "-"); res = substr(a[1], length(a[1]), 1); if (res == 1) white++; if (res == 0) black++; if (res == 2) draw++;} END { print white+black+draw, white, black, draw }'
```
$0 : 输入行 [Result "1/2-1/2"]
split($0, a, "-")  : split 输入行
substr(a[1], length(a[1]), 1);  取出最后一个字符

## 并行处理
```
find . -type f -name '*.pgn' -print0 | xargs -0 -n1 -P8 mawk '/Result/ { split($0, a, "-"); res = substr(a[1], length(a[1]), 1); if (res == 1) white++; if (res == 0) black++; if (res == 2) draw++ } END { print white+black+draw, white, black, draw }' | awk '{games += $1; white += $2; black += $3; draw += $4; } END { print games, white, black, draw }'
```
xargs 将参数列表分段执行

xargs -n1 -p8: 每次取一个输入，运行8个任务

