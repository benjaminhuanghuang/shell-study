以查看当前运行的 Shell。
```
  echo $SHELL

  echo $BASH_VERSION
```

查看当前的 Linux 系统安装的所有 Shell。
```
  cat /etc/shells
```


```
  bash --version
```

Bash 会将用户在当前 Shell 的操作历史写入~/.bash_history文件，该文件默认储存500个操作。
环境变量$HISTFILE总是指向这个文件。
```
$ echo $HISTFILE


$ export HISTTIMEFORMAT='%F %T  '
$ history
```