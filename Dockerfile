FROM cmmc/rpi-lighttpd
MAINTAINER Nat Weerawan <nat@cmmc.io>


RUN mkdir -p /var/www
ADD hivemq-mqtt-web-client /var/www/hivemq-mqtt-web-client
ADD simple-mqtt-websocket-example /var/www/simple-mqtt-websocket-example

COPY configs /root/configs
ADD run.sh /root/run.sh 

EXPOSE 80

#ADD docker-entrypoint.sh /usr/bin/ 
#ENTRYPOINT ["docker-entrypoint.sh"] 

ENTRYPOINT ["/root/run.sh"] 
