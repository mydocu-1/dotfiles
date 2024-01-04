#!/bin/bash

export XAUTHORITY="${HOME}/.Xauthority"
export DISPLAY=:0

/usr/bin/setsid /usr/bin/i3-nagbar --message "Battery is low!" --type warning 2>&1 > /dev/null &

