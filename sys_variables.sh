echo $SHELL # echo $0   
let PID=pgrep chrome
cat /proc/$PID/environ | tr '\0' '\n'



if [ $UID -ne 0 ]; then
    echo Non root user. Please run as root.
else
    echo Root user
fi