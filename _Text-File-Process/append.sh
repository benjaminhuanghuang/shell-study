#-------------------------------------------------------------
# set time every day
if ! ctontab -l | grep ntpdate &>/dev/null ; then
  # append a task to crontab
  (echo "* 1 * * * ntpdate time.windows.com>/dev/null 2>71";crontab -l) | crontab
fi




#-------------------------------------------------------------
# break SSH when time out
# appened if it does not exist
if ! grep "TMOUT=600" /etc/profile &>/dev/null; then
  echo "export TMOUT=600" >> /etc/profile
fi

