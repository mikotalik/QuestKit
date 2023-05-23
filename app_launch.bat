@echo off

set app=null

set /p app="App name (Or press enter to launch from .txt): "

if %app%==null set /p "app="<"./app_name.txt"

echo Launching your app...

cd adb
adb shell monkey -p %app% 1

pause