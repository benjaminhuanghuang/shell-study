#-------------------------------------------------------------
# reset firewall
if egrep "7.[0-9]" /etc/redhat-release &>/dev/null; then
  # for version 7.x
  systemctl stop firewalld
  systemctl disable firewalld
elif egrep "6.[0-9]" /etc/redhat-release &>/dev/null; then
  # for version 6.x
  service iptables stop
  chkconfig iptables off
fi