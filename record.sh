#!/bin/sh
#made by necronoise
ffmpeg -f x11grab \
-s 1366x768 \
-an -i :0.0 \
-r 25 \
-q:v 5 \
-y ~/videos/record_`date +%d-%m-%Y_%H:%M`.mkv
