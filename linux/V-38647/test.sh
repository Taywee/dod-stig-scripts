#!/bin/sh

if grep -F umask /etc/profile | grep -vqE '^[[:space:]]*umask[[:space:]]*077'; then
    echo 'umask is not 077'
    exit 1
fi

exit 0
