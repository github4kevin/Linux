#!/bin/bash

########################
#Backup Docker & Scripts
########################

# Identify User
user=$(whoami)

# Location of Backup
dest="/home/$user/Backups"

#The line below will store multiple folders in an array (files)
files=("/home/$user/Docker" "/home/$user/Scripts")
day=$(date +%m-%d-%Y_%H-%M-%S)
hostname=$(hostname -s)
archive_file="${hostname^}_$day.tar"


for i in "${files[@]}"  # For every line in FILES
do # Do the following, starting with the first one:
    # Print start status message.
    echo "Backing up $i to $dest/$archive_file"  # Here, $i will be the first directory
    date
    echo

    # Backup the files using tar.
    tar czf $dest/$archive_file $i # Again, $i is the directory    
done # Stop here and do the loop again with the next item in FILES

# Print end status message.
echo
echo "Backup finished"

# Long listing of files in $dest to check file sizes.
ls -lh $dest