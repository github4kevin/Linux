#!/bin/bash

# Variables #
src="/home/kevin/Scripts"
bkup="/home/kevin/Backups"
day=$(date +%m-%d-%Y_%H-%M-%S)
archive="ScriptsBackups_$day.tgz"
logname="/home/kevin/Scripts/Logs/ScriptsBackups.log"

# Start Message #
date >> $logname
echo "Starting Backup of $src ---> $bkup/$archive" >> $logname

# Compression #
tar czf $bkup/$archive $src >> $logname

# End Message #
echo "-------------" >> $logname
echo "Finished Scripts Backup" >> $logname
date >> $logname
echo "=====================================" >> $logname