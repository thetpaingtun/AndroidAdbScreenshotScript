#!/usr/bin/env bash

# put the path to save the screenshots to 
saved_path=/Users/LEO/Desktop/screenshots

mkdir $saved_path

time=$(date +%s)
file_name=${time}.png

# change the path to adb
adb shell screencap -p /sdcard/sc.png
adb pull /sdcard/sc.png $saved_path/$file_name
adb shell rm /sdcard/sc.png
