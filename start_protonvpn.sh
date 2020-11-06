#!/bin/bash

protonvpn s | grep 'Status' | grep -o 'Disconnected'

if [ $? -eq 0 ]
then
	protonvpn c --c US
fi
