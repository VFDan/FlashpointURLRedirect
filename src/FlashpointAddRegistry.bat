reg add HKCU\Software\Classes\flashpoint /f /v "URL Protocol" /t REG_SZ
reg add HKCU\Software\Classes\flashpoint\shell\open\command /f /t REG_SZ /d "WSCRIPT \"%~dp0FlashpointURLs.vbs\" \"%%1\""
