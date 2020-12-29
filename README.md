## Reference
- [Linux bash shell and scripts](https://www.linkedin.com/learning/linux-bash-shell-and-scripts/)


## Guide
- GitHub BASH style guide
- Google BASH style guide


## init 
.bashrc is a shell script that Bash runs whenever it is started interactively. It initializes an interactive shell session. 

Contrast .bash_profile and .profile which are only run at the start of a new login shell. (bash -l) 

You choose whether a command goes in .bashrc vs .bash_profile depending on on whether you want it to run `once` or for `every interactive shell start`.


## shebang
```
#!/bin/bash
```
```
  #!/usr/bin/env bash
```
Use `env` command to search the system path for the bassh interpreter

## Add value to current Bash env
```
  VAR=10
  export  VAR
```

## source vs run
source or . just interpret the script, without create a new process
It was used add variable 


## umnx
```
```