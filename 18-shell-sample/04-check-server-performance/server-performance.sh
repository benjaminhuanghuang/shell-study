#----------------------------------------------------------------
# CPU
#   top
#   vmstate

# In row 3, get user used + sys used
function cpu(){
  util = $(vmstat | awk '{if(NR=3)print $13+$14}')
  iowait = $(vmstat | awk '{if(NR=3)print $16}')

  echo "CPU used: ${util}%, IO Waiting ${iowati}%"
}

cpu

#----------------------------------------------------------------
# Memory
#    free -m

# in row 2
function memory(){
  total = $(free -m | awk '{if(NR=2)printf "%.1f", $2/1024}')   # keep 1 digit
  used = $(free -m | awk '{if(NR=2)printf "%.1f", ($2-$NF)/1024}')    # col2 - last col
  available = $(free -m | awk '{if(NR=2)printf "%.1f", $NF/1024}')    # last col

  echo "Total: ${total}G, Used: ${used}G, rest: ${available}G"
}

memory


#----------------------------------------------------------------
# Disk
#   df -h
# 
function disk(){
  disks = $(df -h | awk '/^\/dev/{print &1}')   # start with /dev
  for d in $disks; do
    mounted=$(df -h | awk -v p=$d '$1==p{print $NF}')   # use variable p, if first col is p: print
    size=$(df -h | awk -v p=$d '$1==p{print $2}}')
    used=$(df -h | awk -v p=$d '$1==p{print $3}}')
    used_percent=$(df -h | awk -v p=$d '$1=={print $5}')
  done

  echo "mounted: $mounted, size: $size, used: $used, used_percent: $used_percent"
}

disk
#----------------------------------------------------------------
# TCP
#   netstat -antp
tcp_status(){
  summary=$(netstat -antp | awk'{a[%6]++}END{for(i in a)}printf i":"a[i]" "}')

  echo "TCP Summary: $summary"
}   