@echo off
cd /D "%~dp0"
setlocal enabledelayedexpansion
SET "FPARG=%~1"
SET "FPARG=%FPARG:/=%"
SET "FPARG=%FPARG:flashpoint:=%"
SET "FPARG=%FPARG:~0,36%"

echo(!!FPARG!!|findstr /r /i /x "[0-9a-f-]*"|set /p "FPARG="
If !ERRORLEVEL! NEQ 0 (
	ECHO MsgBox "GUID !FPARG! is invalid.",0,"FlashpointURLRedirect">%TMP%\TMP.VBS
	WSCRIPT /nologo %TMP%\TMP.VBS
	DEL %TMP%\TMP.VBS
	exit /b
) Else (
	start "" "CLIFp.exe" --quiet --auto !FPARG!
)
