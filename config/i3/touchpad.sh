#!/bin/bash

declare -i ID
ID=`xinput list | grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    xinput disable $ID
    dunstify -h string:x-dunst-stack-tag:test 'Touchpad DISABLED'
else
    xinput enable $ID
    dunstify -h string:x-dunst-stack-tag:test 'Touchpad ENABLED'
fi
