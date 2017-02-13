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