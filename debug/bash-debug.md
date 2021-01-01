

## 2 ways to use Bash's debugging mode
Run script with -x

bash的-x参数可以在执行每一行命令之前，打印该命令
```
  bash -x ./myscript.sh
```

add -x in shell script
```
set -x      # debug on


set +x      # debug off
```