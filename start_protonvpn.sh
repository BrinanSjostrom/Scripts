#!/bin/bash

#################################
# This script checks to see if my
# VPN is running and if it isnt
# it starts it up
#################################



protonvpn s | grep 'Status' | grep -o 'Disconnected' > /dev/null

if [ $? -eq 0 ]
then
	protonvpn c --c US
fi
