adb disconnect
adb tcpip 5555
sleep 3s
output=$(adb shell ip addr show wlan0)
ip=$(grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' <<< $output)


firstIp=$(echo $ip | cut -d' ' -f 1)
echo "ip found : $firstIp"

echo $(adb connect $firstIp)



