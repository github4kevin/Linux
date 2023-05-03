# Plex Meta Manager (PMM)

This contains all my PMM scripts. It contains 3 YAML files:

 1. *config.yml* -  my plex and imdb connection strings
 2. *movies.yml* -  my custom smart Movies collection filters
 3. *shows.yml* -  my custom smart TV Show collection filters
 4. *config-default.yml* - the default config file from the PMM site.

To manually run the script, run the following commands in the terminal: 

*Run the command below in the terminal:*

     docker exec -it plex-meta-manager bash

*Run the command belw in container bash terminal:*

     python plex_meta_manager.py -r

**Note**: I need to look into creating a *music.yml* config and create a custom Music collection filters.
