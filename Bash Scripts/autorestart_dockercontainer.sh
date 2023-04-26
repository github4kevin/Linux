#!/bin/bash

# Variables #
logname="Restart_Arrs_Log.txt"

date >> $logname
echo "---------" >> $logname

# Restart Scripts
/usr/bin/docker container restart qbittorrent >> $logname
/usr/bin/docker container restart overseerr >> $logname
/usr/bin/docker container restart prowlarr >> $logname
/usr/bin/docker container restart lidarr >> $logname
/usr/bin/docker container restart radarr >> $logname
/usr/bin/docker container restart sonarr >> $logname
/usr/bin/docker container restart bazarr >> $logname
echo "=================================" >> $logname
