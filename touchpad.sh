#!/bin/bash

declare -i ID #declare variable ID as integer type
ID=`xinput list | grep -Eo 'DELL0782:00\ 06CB:7E92\ Touchpad\s*id\=[0-9]{1,2}' | cut -d '=' -f 2`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    xinput --disable $ID
    echo "Touchpad disabled."
else
    xinput --enable $ID
    echo "Touchpad enabled."
fi

#read  # add it can remain terminal
