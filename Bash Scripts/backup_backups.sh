#!/bin/bash

# Variables #
src="/home/kevin/Backups"
bkup="/media/Movies/BackupLinux"
logname="/home/kevin/Scripts/Logs/BackupBackups.log"

# Start Message #
date >> $logname
echo "Copying Backups from $src ---> $bkup" >> $logname
echo "-------------" >> $logname

# Copy Script #
cp -r $src/* $bkup >> $logname

# End Message #
echo "Finished copying backups" >> $logname
date >> $logname
echo "=====================================" >> $logname