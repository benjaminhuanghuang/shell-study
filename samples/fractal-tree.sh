#/usr/local/bin/bash


matrix=()

ROWS=63
COLS=100
HEIGHT=32  # trunk + branches


function print_tree() {
    local n=$1
    local root_row=$2
    local root_col=$3
    local height=$4
    if [[ $n -eq 0 ]];then
        return
    fi
    echo "n is $n"
    echo "root_row is $root_row"
    echo "root_col is $root_col"
    echo "height is $height"

    local branch_row=$(($height/2+$root_row-1))
    local top_row=$(($height+$root_row-1))
    # create the trunk
    for ((i=root_row;i<=branch_row;i++)) do
        row=${matrix[$i]}
        row=$(echo $row|sed s/./1/$root_col)
        matrix[$i]=$row
    done

    local branch_left=$((root_col))
    local branch_right=$((root_col))

    for ((i=branch_row+1;i<=top_row;i++)) do
        row=${matrix[$i]}
        ((branch_left--))
        ((branch_right++))
        row=$(echo $row|sed s/./1/$branch_left)
        row=$(echo $row|sed s/./1/$branch_right)
        matrix[$i]=$row
    done

    print_tree $((n-1))  $((top_row+1)) $branch_left  $((height/2))
    print_tree $((n-1))  $((top_row+1)) $branch_right $((height/2))
}

# init matrix with underscores
for ((i=0;i<=ROWS;i++)) do
    row=""
    for ((j=1;j<=COLS;j++)) do
        row+="_"
    done
    matrix+=($row)
done

# read N
N=3
root_row=1
root_col=50


print_tree $N  $root_row  $root_col  $HEIGHT

print the result
for ((i=ROWS;i>=1;i--)) do
    echo ${matrix[i]}
done




