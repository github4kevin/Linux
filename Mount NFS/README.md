# NFS Mount (Linux)

This will contain the terminal commands for mounting NFS Synology NAS drives. 

Before running any of the terminal commands, you will need to install the nfs package in linux but running the following terminal command:

    sudo apt install nfs-commons
    sudo apt install nfs-common

***Execution Steps:***

 1. Create the mount directories
 2. Manually mount your Synology NAS drives to the created directories
 3. Edit the /etc/fstab to auto-mount Synology NAS on bootup.

***Note***: after mounting, you can confirm by navigating to it on your file manager. Alternatively, you can run the following command: `df -h`