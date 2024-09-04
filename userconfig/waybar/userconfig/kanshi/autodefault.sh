#! /usr/bin/bash

DISPLAY=$(xrandr | grep DP- | grep 1920x1080 | cut -c1-4)
echo ${DISPLAY}

xrandr -display :0.0 --output ${DISPLAY} --primary
