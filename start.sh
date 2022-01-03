#!/bin/bash

if [ ! -f /mumble/mumble-server.ini ]
then
 sed -i 's/var.log.mumble-server/mumble/' /etc/mumble-server.ini
 sed -i 's/var.lib.mumble-server/mumble/' /etc/mumble-server.ini
 cp /etc/mumble-server.ini /mumble/mumble-server.ini
 chmod 777 /mumble/mumble-server.ini
 echo The config file is created in /mumble
fi

echo Starting mumble server
chmod -R 777 /mumble
sed -i 's/^INIFILE=.*/INIFILE=\/mumble\/mumble-server.ini/' /etc/init.d/mumble-server
service mumble-server start
echo mumble is started

while true
do 
sleep 3000
done

