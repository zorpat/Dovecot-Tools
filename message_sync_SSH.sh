#!/bin/bash

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = #
# Copy messages from all dovecot system users to other server (ex. backup server)
# 
# Version: 0.1-stable
# 
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = #
# 
# Usage:
#	- change variables to meet your requirements
#	- chmod a+x message_sync_SSH.sh
#	- ./message_sync_SSH.sh
# 
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = #


#*************************************************
# !! Set this variables as needed !!
#*************************************************

remote_server="backup.example.com"
remote_ssh_port="22"

#################################################################################################################################
#        D O N T   C H A N G E   A N Y T H I N G   B E L O W   T H I S   L I N E   !!                                           #
#################################################################################################################################

doveadm user '*' | while read user;
do
   echo "Processing $user.."
   doveadm sync -u $user ssh $remote_server -p$remote_ssh_port doveadm dsync-server -u $user
done