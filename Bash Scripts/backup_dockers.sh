#!/bin/bash

# Variables #
dockerservicesdirectory="/home/kevin/Docker/Services"
src="$dockerservicesdirectory/Tautulli $dockerservicesdirectory/Speedtest $dockerservicesdirectory/PlexTrakt $dockerservicesdirectory/PlexMetaManager"
bkup="/home/kevin/Backups"
day=$(date +%m-%d-%Y_%H-%M-%S)
archive="DockerBackups_$day.tgz"
logname="/home/kevin/Scripts/Logs/DockerBackups.log"

# Start Message #
date >> $logname
echo "Starting Backup of $src ---> $bkup/$archive" >> $logname

# Compression #
tar czf $bkup/$archive $src >> $logname

# End Message #
echo "-------------" >> $logname
echo "Finished Docker Services Backup" >> $logname
date >> $logname
echo "=====================================" >> $logname