@echo off

rem put the path to save the screenshots to 
set saved_path=C:/Users/user/Desktop/screenshots
set f = /sdcard/sc_%time%.png
 

for /f "delims=:. tokens=1-4" %%t in ("%TIME: =0%") do (
    set FILENAME=ss-%%t%%u%%v%%w.png
)

mkdir "%saved_path%"

rem change the path to adb
adb shell screencap -p /sdcard/sc.png 
adb pull /sdcard/sc.png %saved_path%/%FILENAME%
