#!/bin/sh

for logfile in $(grep -hroE '/[-\/a-zA-Z\._0-9]+($|[[:space:]])' /etc/rsyslog.*); do
    if [ -e "$logfile" ] && ! test_perms "$logfile" 600; then
        chmod 0600 "$logfile"
    fi
done
