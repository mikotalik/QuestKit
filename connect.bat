@echo off
set ip=nothing
cd adb
FOR /F "tokens=9 delims= " %%a in ('adb shell ip route') do (
	set ip=%%a
)
adb tcpip 5555
set ipwithport=%ip%:5555
adb connect %ipwithport%
echo connected to %ip%
pause