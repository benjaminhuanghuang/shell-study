# Method 1
# $0代表当前行
awk '{printf("%d,%s\n",NR,$0)}' filename

# Method 2
awk -F ':' '{print NR ") " $0}' demo.txt