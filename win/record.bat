@echo of
rem put the path to save the screenshots to 
set saved_path=C:/Users/user/Desktop/screenshots
set f = /sdcard/sc_%time%.png
 

for /f "delims=:. tokens=1-4" %%t in ("%TIME: =0%") do (
    set FILENAME=ss-%%t%%u%%v%%w.mp4
)

mkdir "%saved_path%"

rem change the path to adb
adb shell screenrecord /sdcard/vid.mp4
adb pull /sdcard/vid.mp4 %saved_path%/%FILENAME%