# AndroidAdbScreenshotScript

The script to capture and record the screen using ADB

## Configuration Instruction 

### Windows

1. First download screenshotscript-v1.0.0.zip from https://github.com/thetpaingtun/AndroidAdbScreenshotScript/releases
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
2. For the target location enter 
```
cmd /c "D:\path_to_script\win\scr.bat"
```
3. Then click on Next and enter the shortcut name 
4. Now you can pin the shortcut to the taskbar.

## Usage 

1. Connect the phone through USB cable 
2. Turn on the developer options 
3. Enable USB debugging mode.

### For screenshot
1. Double click on the scr.bat
2. Screenshot image will be found in the saved path you configured in the batch file.

### For recording

1. Double click on the record.bat to start the recording.
2. To stop the recording, press **CTRL+C"** in CMD
3. When the CMD prompt to Terminate the batch job, enter N


