@echo off
cd /D "%~dp0"
setlocal enabledelayedexpansion
SET "FPARG=%~1"
SET "FPARG=%FPARG:/=%"
SET "FPARG=%FPARG:flashpoint:=%"
SET "FPARG=%FPARG:~0,36%"
echo(!!FPARG!!|findstr /r /i /x "[0-9a-f-]*"|set /p "FPARG="
If !ERRORLEVEL! NEQ 0 echo Error, "GUID is invalid" & exit /b
start "" "CLIFp.exe" --quiet --auto !FPARG!
