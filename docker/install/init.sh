#!/usr/bin/env bash

#  !Important. This file execute in docker container on the end .bashrc file in /root directory

cd /opt/install


# The standalone for connecting to remote db
#cp standalone_remote_db.xml /wildfly-13.0.0.Final/standalone/configuration/standalone.xml

# The standalone for connecting to local db
cp standalone_local_db.xml /wildfly-13.0.0.Final/standalone/configuration/standalone.xml


cp standalone.debug.sh /wildfly-13.0.0.Final/bin

cp gsaa.mard.lcl.conf /etc/apache2/sites-enabled/
service apache2 restart


