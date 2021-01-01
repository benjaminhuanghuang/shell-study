https://wangdoc.com/bash/startup.html


## 
## .bashrcs 
.bashrc is a shell script that Bash runs whenever it is started interactively. It initializes an interactive shell session. 

## .bash_profile
.bash_profile is read when Bask iss invoked as a `login shell`. (bash -l) 

You choose whether a command goes in .bashrc vs .bash_profile depending on on whether you want it to run `once` or for `every interactive shell start`.



## ~/.inputrc
对 bash的键盘操作进行设定
```
set editing-mode vi

set -o vi
set -o emacs
```

