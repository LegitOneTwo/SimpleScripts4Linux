#!/bin/bash

echo "Backing up files..." #send message about starting the process

backup_dir="/etc/network/interfaces /etc/dhcp/dhcpd.conf /etc/passwd /etc/group" #files to backup
dest_dir="/archive" #Destination of the backup archive

mkdir -p $dest_dir #creating a destination dir 
zip $dest_dir/$(hostname -s)-$(date +%d.%m.%y).zip $backup_dir #make an archive with date in the name using zip command

echo "Backup process done" #send message to user about success
