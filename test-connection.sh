#!/bin/bash

while [ 1 ]; do
        sudo ping -c 1 8.8.8.8 & wait $!
        if [ $? != 0 ]; then
                sudo dhclient eth0
		export DISPLAY=:0.0
		XAUTHORITY=/home/pi/.Xauthority
       		WID=$(xdotool search --onlyvisible --class chromium|head -1)
        	xdotool windowactivate ${WID}
        	xdotool key ctrl+F5
        fi
	sleep 10
done
