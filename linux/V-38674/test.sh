#!/bin/sh

if ! grep -qE '^id:3:inittedault:' /etc/inittab; then
    echo Default runlevel is not 3
    exit 1
fi

exit 0
