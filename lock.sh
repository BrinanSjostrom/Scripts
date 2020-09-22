#!/bin/bash


#############################
# This script locks screen in
# i3wm and makes it look
# like i've blured the screen
#############################

import -window root /tmp/screen.png 
convert -blur 0x10 /tmp/screen.png /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
