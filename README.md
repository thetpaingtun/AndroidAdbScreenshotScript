# AndroidAdbScreenshotScript

The script to capture and record the screen using ADB

## Configuration Instruction 

### Windows

1. First download win.zip from https://github.com/thetpaingtun/AndroidAdbScreenshotScript/releases
2. After unzipping it, go into win folder and open scr.bat in text editor.
3. Search for save_path and update the path that you want to store the screenshot images :
```
set saved_path=C:/Users/user/Desktop/screenshots
```
4. If your system has adb installed and added to the system variable, you can skip this step.If not,search for adb and update the path to adb.The adb can be found inside platform-tools/adb.exe.After update,scr.bat should be something like :

```
C:\Users\user\Downloads\screenshotscript-v1.0.0\win\platform-tools\adb.exe pull ....
```
That's all for scr.bat.

5. Then open the record.bat and repeat the changes(update the save_path and the full path to adb)

#### Additional Step (Create a shortcut so that you can pin it to the task bar)
1. Right click desktop and select new > shortcut
2. For the target location, enter 
```
cmd /c "D:\path_to_script\win\scr.bat"
```
3. Then click on Next and enter the shortcut name 
4. Now you can pin the shortcut to the taskbar.


### Mac

1. Download mac.zip from https://github.com/thetpaingtun/AndroidAdbScreenshotScript/releases
2. Open scr.sh in text editor
3. Search for saved_path and update the path that you want to save the screenshot images:
```
saved_path=/Users/user/Desktop/screenshots
```
4. If your system has adb installed and added to the PATH, you can skip this step.If not,search for adb(there are three places) and update the path to adb.The adb can be found inside platform-tools/adb.exe.After update,scr.sh should be something like :

```
/Users/path_to_adb/adb shell ...
```
5. Launch the terminal and make the shell script executable :
```
chmod a+x scr.sh
```
6. Repeat the above steps for record.sh 


## Usage 

1. Connect the phone through USB cable 
2. Turn on the developer options 
3. Enable USB debugging mode.

### For screenshot (Win & Mac)
1. Double click on the scr.bat or scr.sh
2. Screenshot image will be found in the saved path you configured in the batch file.

### For recording (Win)

1. Double click on the record.bat to start the recording.
2. To stop the recording, press **CTRL+C"** in CMD
3. When the CMD prompt to Terminate the batch job, enter N

### For recording (Mac)

1. Double click on the record.sh to start the recording
2. To stop the recording press **ENTER** in terminal 

**For more adb commands, please checkout** https://gist.github.com/thetpaingtun/a2c0c91a123a2cf2382882930477b58b



