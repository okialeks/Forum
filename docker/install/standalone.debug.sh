#!/bin/sh
export JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=8453,server=y,suspend=n -Xms128m -Xmx1024m -XX:MaxPermSize=1024M"
./standalone.sh -b=0.0.0.0

