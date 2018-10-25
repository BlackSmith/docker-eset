#!/bin/sh

replace() {
  while [ ! -f /usr/local/tomcat/webapps/era/WEB-INF/classes/sk/eset/era/g2webconsole/server/modules/config/EraWebServerConfig.properties ]
  do
    sleep 0.1
  done

  sed -i 's/^server_address=.*/server_address='$ERA_SRV_HOSTNAME'/g' /usr/local/tomcat/webapps/era/WEB-INF/classes/sk/eset/era/g2webconsole/server/modules/config/EraWebServerConfig.properties
}

replace &

catalina.sh run
