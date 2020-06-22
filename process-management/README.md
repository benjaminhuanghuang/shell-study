# Process Management

- from [玩转Linux命令行 - 进程管理 - EP4](https://www.youtube.com/watch?v=uQAmUSJii6I）


## strss  给系统增加负载
```
-t  --timeout N :  N秒后停止
-c  --cpu N     :  产生N个进程，运行sqrt()
-i  --io N      :  产生N个进程，运行sync()
-m  --vm N      :  产生N个进程，运行malloc()/free()
-d  --hdd N     :  产生N个进程，运行wrtie()/unlink()
```
sample
```
  strecc --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s
```

## top  现实进程信息
推荐风扇响时使用

## ps (Process Status)
默认只显示**当前用户**有**控制终端**的进程
```
  ps -l         # 显示 PID， PPID(parent process id)
  ps aux        # (all user process) 显示所有进程，包含其他用户的进程

  ps aux | grep chrome | wc -l       # 看Chrome起了多少进程
```

## kill / killall
kill 给进程发信号
```
  kill PID       # send 15 to process 

  kill -9 / -KILL  PID   # -9 means q(kill)
```
killall 按名字杀进程
```
  killall  bash    # 按名字杀进程
```

## ctrl+C vs ctrl+Z
ctrl+C 向进程发送 SIGTINT，终止进程

ctrl+Z 向进程发送 SIGTSTP，挂起进程


## 进程管理
- & 在后台运行
``` 
  $ python -m http.server &
```
- jobs 显示从当前终端启动的命令

- fg 把后台进程变成前台进程
```
fg %1
```
- bg 继续被挂起的后台进程

