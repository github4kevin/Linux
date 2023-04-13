# Docker / Docker Compose

If you are using docker, it is recommended to installed docker compose to maintain your docker containers. It helps consolidate all your containers, config, persistent volumes, and environmental variables all in one place. 

I have included my docker-compose.yml file with the docker containers I am actively running. 

To install all the same docker containers, make the necessary changes to the `docker-compose.yml` file accordingly and run the following command:

    docker compose up

***Note:*** It is recommended to use Portainer as GUI to manage your container, review container health, restart, delete an existing image, etc.

# curl ifconfig.io
If you want to view the public IP address of a specific container, within the bash shell of that container, run `curl ifconfig.io` and it will output the public IP. This is best used if you want certain containers to go through a VPN for anonymity (qbittorrent, radarr, sonarr, etc.). You can enter a container's bash shell inside portainer.

# docker compose down

This command will stop all docker containers. You will not lose any data with this command.

*Example below:*

    docker compose down

# docker search [*container*]

The “docker search” command searches for specific images through the Docker hub. This command returns the specific information, including image name, description, automated, official stars, etc.

*Explain below:*

    docker search plex

# docker version

This will display the active docker version installed on your machine. It will help to confirm if you are on the latest version for troubleshoot.

*Explain below:*

    docker version

# docker ps
This will display all running docker containers. It comes in handy if you are having any portainer issues.

*Example below:*

    docker ps

# docker stop [*container*]

As the name suggests, this will stop an actively-running docker container. 

*Example below:*

    docker stop plex

# docker network

This command is used to know the details of all your networks within your docker setup. You typically should only have the 3 defaults:

 1. bridge
 2. host
 3. none

Any other networks will be custom/user-created.

*Example below:*

    docker network
