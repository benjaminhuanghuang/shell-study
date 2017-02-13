echo $SHELL # echo $0   
let PID=pgrep chrome
cat /proc/$PID/environ | tr '\0' '\n'

echo "\n"
echo "hello, $USER. I wish to list some files of yours"
echo "listing files in the current directory, $PWD"

echo "\n"
if [ $UID -ne 0 ]; then
    echo $USER is not root user. Please run as root.
else
    echo $USER is root user
fi