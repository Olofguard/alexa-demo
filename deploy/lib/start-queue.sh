#!/bin/bash

/var/www/deploy/lib/setup.sh
if [ ! -f /var/www/storage/logs/queue-listen.log ]; then
    touch /var/www/storage/logs/queue-listen.log
fi

echo "Starting queue listener..."
php artisan queue:listen --tries=6 --sleep=3 --timeout=180 > /var/www/storage/logs/queue-listen.log 2> /var/www/storage/logs/queue-listen.log
