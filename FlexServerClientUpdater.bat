@echo

### This is the Flex Server Client Updater configuration file. Here you will specify what you want the utility to locate & replace within the PC's configuration. It is important to run this utility as an administrator on the PC or it will not update the registry keys for the Mobile client.
###

"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "http\://10.209.0.159\:4080" --replace "https\://njmonso.spillman.agency\:4443"
"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "https\://10.209.0.159\:4443" --replace "https\://njmonso.spillman.agency\:4443"
reg add HKCU\Software\Spillman\Mobile\Settings /v SpillmanPort /t REG_DWORD /d 4443 /f
reg add HKCU\Software\Spillman\Mobile\Settings /v HostAddress /t REG_SZ /d njmonso.spillman.agency /f
