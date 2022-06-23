#!/bin/bash
# ssh execute command 


#------------------------------
# create ssh key pair on the monitor .ssh/
# ssh-keygen 

# copy public key to the machine be monitored
# ssh-copy-id  root@192.168.1.1

# ssh using key
# ssh -i .ssh/id_rsa root@192.168.1.3


# awk '/^[^#]/{print $1}''  skip the comments line





