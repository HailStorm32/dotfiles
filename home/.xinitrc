#!/bin/bash

xbindkeys
xrandr --dpi 96
/usr/bin/dunst &
/home/demetri/Scripts/batteryWarn.sh &
exec i3
