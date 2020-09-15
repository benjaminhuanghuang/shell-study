###########################################
# Create function and Call function
# Goodby()
###########################################
function Hello(){
   echo "Hello"
}


Goodby(){
   echo "Goodby"
}

Hello

Goodby


###########################################
# Pass parameter
###########################################
Greet(){
    local LNAME=$1
    echo "Greet $LNAME"
}




lower(){
    shift # left shift 1 bit

}


fname()
{
    echo $1, $2; #访问参数1和参数2
    echo "$@";   #以列表的方式一次性打印所有参数
    echo "$*";   #类似于$@，但是参数被作为单个实体
    return 0;    #返回值
}


fname 1111 2222 333

# Linux下递归删除空目录
# $1必须是绝对路径
crurl=$1
func_hdir(){
    echo $crurl
    cd $crurl
    for aitem in `ls -l | grep "^d" | awk '{print $9}'`; do
            crurl=$crurl/$aitem
            func_hdir $aitem
    done
    dirc=`ls $crurl`
    if [ "$dirc" = "" ]
    then
        echo $crurl
        rm -rf $crurl
    fi
    crurl=${crurl%/*}
    }
func_hdir


for ((i=1024; i<=20000; i++))
do
echo "" >> /tmp/httpd_port_test.log
echo "Checking $i" >> /tmp/httpd_port_test.log
/etc/init.d/httpd stop
sed -i "s/^Listen [0-9]*$/Listen $i/g" /etc/httpd/conf/httpd.conf
/etc/init.d/httpd start
if [ "$?" -ne 0 ]
then
echo "ERROR: port $i failed."
echo "ERROR: port $i failed." >> /tmp/httpd_port_test.log
else
echo "Success: port $i" >> /tmp/httpd_port_test.log
fi
done