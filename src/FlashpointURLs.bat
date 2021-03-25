@echo off
cd /D "%~dp0"
setlocal enabledelayedexpansion
SET "FPARG=%1"
SET "FPARG=%FPARG:/=%"
SET "FPARG=%FPARG:flashpoint:=%"
SET "FPARG=%FPARG:~0,36%"
echo(!!FPARG!!|findstr /r /x "[0-9a-f-]*"|set /p "FPARG=")
start "" "CLIFp.exe" --quiet --auto %FPARG%
