#!/bin/sh

if grep -qE '^:INPUT DROP' /etc/sysconfig/iptables; then
    exit 0
fi

echo 'The default iptables policy is not DROP'
exit 1
