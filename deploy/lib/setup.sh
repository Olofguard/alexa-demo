#!/bin/bash

appEnv=""
if [ -f /etc/appConfig/.env ];
then
    appEnv=$(cat /etc/appConfig/.env)
fi

echo "$appEnv" >> /var/www/.env
chown -R www-data:www-data  /var/www/
