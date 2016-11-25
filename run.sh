#!/bin/bash

cp -Rv /root/configs/hivemq_config.js /var/www/hivemq-mqtt-web-client/config.js 
cp -Rv /root/configs/simple_mqtt_config.js /var/www/simple-mqtt-websocket-example/config.js 

lighttpd -D -f /etc/lighttpd/lighttpd.conf
