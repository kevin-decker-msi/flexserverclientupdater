@echo
"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "http\://10.209.0.159\:4080" --replace "https\://njmonso.spillman.agency\:4443"
"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "https\://10.209.0.159\:4443" --replace "https\://njmonso.spillman.agency\:4443" 
reg add HKCU\Software\Spillman\Mobile\Settings /v SpillmanPort /t REG_DWORD /d 4443 /f
reg add HKCU\Software\Spillman\Mobile\Settings /v HostAddress /t REG_SZ /d njmonso.spillman.agency /f