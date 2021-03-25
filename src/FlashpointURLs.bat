cd /D "%~dp0"
SET FPARG=%1
SET FPARG=%FPARG:/=%
SET FPARG=%FPARG:flashpoint:=%
start "" "CLIFp.exe" --quiet --auto %FPARG%