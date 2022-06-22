$0：脚本文件名，即script.sh。

$1~$9：对应脚本的第一个参数到第九个参数。

$#：参数的总数。

$@：全部的参数，参数之间使用空格分隔。

$*：全部的参数，参数之间使用变量$IFS值的第一个字符分隔，默认为空格，但是可以自定义。


Sample:
```
#!/bin/bash
# ./script.sh a b c

echo "全部参数：" $@
echo "命令行参数数量：" $#
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3
```


Sample 2: list all arguments
```
  #!/bin/bash

  for i in "$@"; do
    echo $i
  done
```