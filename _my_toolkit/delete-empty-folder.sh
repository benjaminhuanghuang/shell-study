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