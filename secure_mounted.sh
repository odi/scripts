#!/bin/sh
# check if my secure-stick is mounted or not.

if [ -h /dev/mapper/secure ]; then
    echo "yes"
else
    echo "no"
fi
