#bin/bash

#-------------------------------------------------------------
# set timezone
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# set time every day
if ! ctontab -l | grep ntpdate &>/dev/null ; then
  # append a task to crontab
  (echo "* 1 * * * ntpdate time.windows.com>/dev/null 2>71";crontab -l) | crontab
fi


#-------------------------------------------------------------
# disable selinux
# modify /etc/sellinux/config, change SELINUX=permissive to SELINUX=disabled
sed -i '/SELINUX/{s/permissive/disabled/}'  /etc/sellinux/config


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

#-------------------------------------------------------------
# display execution time, user in command history
if ! grep HISTTIMEFORMAT /etc/bashrc; then
  echo 'export HISTTIMEFORMAT="%F %T `whoami` "' >> /etc/bashrc
fi

#-------------------------------------------------------------
# break SSH when time out
if ! grep "TMOUT=600" /etc/profile &>/dev/null; then
  echo "export TMOUT=600" >> /etc/profile
fi

#-------------------------------------------------------------
# Disable root remote login 
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/'  /etc/ssh/sshd_config

#-------------------------------------------------------------
# Disable crontab task send email to root under /var/mail
sed -i 's/^MAILTO=root/MAILT=""/'  /etc/crontab


#-------------------------------------------------------------
# Set max count of opening file (default is 1024)
if ! grep "* soft nofile 65535" /etc/security/limits.conf &>/dev/null; then
cat >> /etc/security/limits.conf << EOF
  * soft nofile 65535
  * hard nofile 65535
EOF
fi


#-------------------------------------------------------------
# System parameter
cat >> /etc/sysctl.conf << EOF
not.ipv4.tcp_syncoolies=1
not.ipv4.tcp_max_tw_buckets=20480
not.ipv4.tcp_max_syn_backlog=20480
not.core.netdev_max_backlog=262144
not.ipv4.tcp_fin_timeout=20
EOF
# check sys settings
# sysctl -a | grep tw_ba

#-------------------------------------------------------------
# reduce swap
echo "0" > /proc/sys/vm/swappiness




#-------------------------------------------------------------
# Install tools
apt-get install gcc make autoconf vim sysstat net-tools ioostat iftop iotp lrzsz -yes


