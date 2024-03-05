# Bijli-insights

#Purpose
This solution was designed to read data from an IoT device supporting MQTT protocol and pushing data to a topic meter/iot/{msn}. Data is pushed to MySQL database after that.
This repository was designed to demonstrate a POC and should not be taken as a full project


#SET-UP
1- Nodered installation. 
    - URL link for docker image is :- https://hub.docker.com/r/nodered/node-red/
    - URL link for docker based installation fo Nodered is :- https://nodered.org/docs/getting-started/docker
2- Eclipse mosquitto
    - URL link for docker image and installation is :- https://hub.docker.com/_/eclipse-mosquitto
    - mosquitto.conf is changed to add following lines 
        ~ allow_anonymous true
        ~ listener 1883
        ~ persistence true
        ~ persistence_location /mosquitto/data/
        ~ log_dest file /mosquitto/log/mosquitto.log
3- MySQL installation
    - Install mysql for windows.
    URL link :- https://dev.mysql.com/doc/refman/8.3/en/windows-installation.html
