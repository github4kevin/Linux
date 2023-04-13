# Docker / Docker Compose

All docker containers and their configurations in a `docker-compose.yml` file. 

To apply every change made to the compose file (typically adding a new container), you will have to run the following command:

    docker compose up

***Note:*** It is recommended to use Portainer as GUI to manage your container, review container health, restart, delete an existing image, etc.

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
