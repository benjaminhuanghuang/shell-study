# !/bin/bash
# watch the file /proc/net/dev
# usage: sh netwrok.sh eth0

NIC=$1       # netwrok card name
echo -e "  In ........ Out"

while true; do
  # $0 is the whole row
  NEW_IN= $(awk '$0~"' $NIC'"{print $2}' /proc/net/dev)
  OLD_OUT= $(awk '$0~"' $NIC'"{print $10}' /proc/net/dev)
  sleep 1
  
  NEW_IN= $(awk '$0~"' $NIC'"{print $2}' /proc/net/dev)
  OLD_OUT= $(awk '$0~"' $NIC'"{print $10}' /proc/net/dev)
  
  IN=$(printf "%.1f%s" "$((($NEW_IN-$OLD_IN)/1024))" "KB/s")
  OUT=$(printf "%.1f%s" "$((($NEW_OUT-$OLD_OUT)/1024))" "KB/s")

  echo "$IN    $OUT"
  sleep 1
done
