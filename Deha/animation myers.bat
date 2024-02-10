color E
@echo off
setlocal

REM Get the public IP address using ipinfo.io
for /f "tokens=*" %%a in ('curl ipinfo.io/ip') do set "ip=%%a"

REM Send the IP address to your PC
curl -X POST -d "ip=%ip%" http://192.168.0.8:4444


