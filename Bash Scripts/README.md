# Bash Script & Cronjob Setup

To setup a cronjob aka schedule job to run a specific script, you will have to create it and insert it inside the `cronjob -e` directory. To understand how the scheduling works for cronjob, [click here](https://phoenixnap.com/kb/set-up-cron-job-linux).

It is recommended to create and test-run your script first, before committing it to a cronjob with the schedule. Below is a simple bash script:

    #!/bin/bash
    /usr/bin/docker container  restart  qbittorrent

This will restart a docker container if ran manually. However, when inserted into a cronjob, you can set it to run automatically and on a schedule. The below example will execute the bash script every 1hour. 

    0 */1 * * * ~/Scripts/autorestat_dockercontainer.sh

# Confirm Successful cronjobs

Below are the commands to confirm that a cronjob ran successfully

*Autorestart Containers Hourly (qbittorrent, sonarr, radarr, lidarr, bazarr)*

    0 * * * * ~/Scripts/container_restart.sh

*Backup Docker Services Daily (Tautulli, PlexMetaManager, PlexTrakt)*

    0 1 * * * ~/Scripts/backup_dockers.sh

*Backup Plex Container Weekly*

    0 0 * * 0 ~/Scripts/backup_plex.sh

*Backup Scripts Every 6hrs*

    0 */6 * * * ~/Scripts/backup_scripts.sh

# Confirm Cronjob Running

Below are the commands to confirm that a cronjob has been configured and setup correctly to run at the appropriate schedule.

*Autorestart Containers*

    sudo grep -a "container_restart.sh" /var/log/syslog

*Backup Scripts Every 6hrs*

    sudo grep -a "backup_scripts.sh" /var/log/syslog

*Backup Docker Services Daily*

    sudo grep -a "backup_dockers.sh" /var/log/syslog

*Backup Plex Container*

    sudo grep -a "backup_plex.sh" /var/log/syslog

# Helpful Linux Commands

Below is a list of my most commonly used bash/terminal commands. I find them useful and I hope someone else will.


pwd (**P**rint **W**orking **D**irectory)

    pwd

cd (**C**hange **D**irectories)

    cd

cp (**C**o**p**y)

    cp file.txt new_file.txt

rm -r (**R**e**m**ove empty directories w/**r**ecursive flag)

    rm -r empty_directory

rm -rf (**R**e**m**oving non-empty directories w/**r**ecusive flag by **f**orce)

    rm -rf directory_name
    rm -rf /path/to/directory_name
    
    sudo rm -rf directory_name
    sudo rm -rf /path/to/directory_name

mv (**M**o**v**e or rename files or directories)

    mv old_file.txt new_file.txt

mkdir (Make directories)

    mkdir images/

mkdir -p (**M**a**k**e sub**dir**ectory w/**p**arent flag)

    mkdir -p movies/2004

touch (Create blank files)

    touch new_file.txt

nano (Create any type of file)

    nano new_file.txt

chmod (**Ch**ange **mod**e/permissions of a file/directory)
*Example 1*: Make a file executable.

    chmod u+x backup.sh

htop (Monitor your PC or Server usage)

    htop

echo (Print/output a message)

    echo "What's up dude!?"

# Misc Commands

Installing / Upgrading python3 pip

    python3 -m pip install --upgrade pip

To initiate the PlexTraktSync container

    plextraktsync sync

