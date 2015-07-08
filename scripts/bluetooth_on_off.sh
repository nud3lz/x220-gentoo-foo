#!/bin/bash

device_state=`sudo /usr/sbin/rfkill list 0 | grep "Soft blocked:" |awk '{print $3}'`
RFKILL=/usr/sbin/rfkill

echo $device_state

case $device_state in
    yes)
        sudo $RFKILL unblock 0
	notify-send "Switching on Bluetooth" -t 1500
        ;;
    no)
        sudo $RFKILL block 0
	notify-send "Switching off Bluetooth" -t 1500
        ;;
    *)
    echo "somekind of no no or no yes state ...."
    notify-send "A no no or no yes state issue" -t 3000

esac
