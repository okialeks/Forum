#!/bin/bash


# this command ask password for sudo
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi


docker-compose down
docker-compose up -d

# sets container name and domain with which i necessary configure hosts file
container_name=gsaa-mard-api-wild-fly
domain=gsaa.mard.lcl

postgres_container_name=postgis9.6.1-mard
postgres_server_domain=POSTGIS_DATABASE_SERVER


# after run docker, fetch which is id address of current container and that ip address is after necessary change in "/etc/hosts" file
docker_image_ip=$(docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$container_name")

# after run docker, fetch which is id address of current container and that ip address is after necessary change in "/etc/hosts" file
docker_postgres_container_ip=$(docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$postgres_container_name")

# function for delete domain from hosts file if alredy exists
delDomain () {
    toDelete=$1
    tmp=$(mktemp)
    while read line; do
        if [[ $line != *$toDelete* ]]; then
            printf "%s\n" "$line"
        fi
    done < /etc/hosts > "$tmp" && mv "$tmp" /etc/hosts
}

delDomain "$domain"
delDomain "$postgres_server_domain"

# Write new docker ip address to the "/etc/hosts" file
echo "$docker_image_ip $domain" >> /etc/hosts
echo "$docker_postgres_container_ip $postgres_server_domain" >> /etc/hosts

# Sets corresponding permissions for hosts file
chmod 644 /etc/hosts
# dns-clean. This is sometime necessary
/etc/init.d/dns-clean start


bash terminal_scripts/create_error_log_scripts.sh
