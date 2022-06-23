# !/bin/bash
# watch the file /proc/net/dev

NIC=$1       # netwrok card name
echo -e "  In ........ Out"

while true; do
  NEW_IN= $(awk -F'[: ]+' '$0~"'$NIC'"{print $3}' /proc/net/dev)
  OLD_OUT= $(awk -F'[: ]+' '$0~"'$NIC'"{print $11}' /proc/net/dev)
  sleep 1
  NEW_IN= $(awk -F'[: ]+' '$0~"'$NIC'"{print $3}' /proc/net/dev)
  NEW_OUT= $(awk -F'[: ]+' '$0~"'$NIC'"{print $11}' /proc/net/dev)
  
  IN=$(printf "%.1f%s" "$((($NEW_IN-$OLD_IN)/1024))" "KB/s")
  OUT=$(printf "%.1f%s" "$((($NEW_OUT-$OLD_OUT)/1024))" "KB/s")

  echo "$IN    $OUT"
  sleep 1
done
