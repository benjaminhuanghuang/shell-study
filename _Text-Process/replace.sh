# modify /etc/sellinux/config, change SELINUX=permissive to SELINUX=disabled
sed -i '/SELINUX/{s/permissive/disabled/}'  /etc/sellinux/config

