#!/bin/bash

# Variables #
src="/home/kevin/Docker/Services/Plex"
bkup="/home/kevin/Backups"
day=$(date +%m-%d-%Y_%H-%M-%S)
archive="PlexBackup_$day.tgz"
logname="/home/kevin/Scripts/Logs/PlexBackups.log"

# Start Message #
date >> $logname
echo "Starting Backup of $src ---> $bkup/$archive" >> $logname

# Compression #
tar czf $bkup/$archive $src >> $logname

# End Message #
echo "-------------" >> $logname
echo "Finished Plex Docker Backup" >> $logname
date >> $logname
echo "=====================================" >> $logname