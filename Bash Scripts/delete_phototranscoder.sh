#!/bin/bash

# Variables #
logname="/home/kevin/Scripts/Logs/PhotoTranscoderDelete.log"

# Start Message #
echo "PhotoTranscoderDelete - Start.." >> $logname
date >> $logname
echo "------------" >> $logname

# Script #
rm -r -f -v /home/kevin/Docker/Services/Plex/Library/Application\ Support/Plex\ Media\ Server/Cache/PhotoTranscoder

echo "------------" >> $logname
# Completed Message #
echo "PhotoTranscoderDelete - Completed" >> $logname
date >> $logname
echo "======================="
