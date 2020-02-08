
## Introduction
Mumble-docker is a Docker image that contains an up to date mumble server in addition to a music bot. The idea behind it is to allow for easy deployment to your server without the hassle of worrying about dependancies.

## Features
* Last stable version of mumble server Murmur.
* Music bot "Botamusique" developed by azlux.
* Access to mumble and the bot configuration files as well as log files for both to your desired location 
* Access to mumbles database for easy backups and restore.
* Exposing mumble Ice ports for easy implementation of Channel viewers protocol CVP as well as Mumo.

## Installation
Docker is required. You can either pull the image using dockers command or clone the repository with the option - - recurse-submodules to clone even the submodules then build the docker image  from scratch.

### Using Docker pull

Create 2 directories (or one if you wish so) of which you want to store your config files in. If you have already a backup copy of either your previous mumble server config file or the sqlite database put it inside the directory you created for mumble otherwise leave it empty. The script will determine if you have a mumble-server.ini file and create one if no file founded. 

Run the image using the following. 

```
docker run -i -t -d --name mumble --restart always --network host -v YOUR_PATH:/mumble -v YOUR_PATH:/bot/config ajmandourah/mumble
```

Replace ```YOUR_PATH ``` with your absolute directories path that you have created earlier. 

## Todo
* create a systemd file for the bot reconnect to the server if something is wrong.
* created a cron job to update the bot every now and then (especially youtube-dl as it's the most common cause of crash)
* Your suggestions?? 
