# put the path to save the screenshots to 
saved_path=/Users/LEO/Desktop/screenshots

mkdir $saved_path

time=$(date +%s)
file_name=${time}.mp4

# change the path to adb
adb shell screenrecord /sdcard/vid.mp4 & PID=$!

read -r -p "Press [Enter] to stop recording..."

kill $PID
sleep 1


adb pull /sdcard/vid.mp4 $saved_path/$file_name
adb shell rm /sdcard/vid.mp4
