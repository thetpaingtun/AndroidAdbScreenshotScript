speed=$1

# echo $speed

if [[ -z $speed ]]; then
	speed=1
fi


adb shell settings put global window_animation_scale $speed
adb shell settings put global transition_animation_scale $speed
adb shell settings put global animator_duration_scale $speed


echo "animation scale changed to : $speed"
