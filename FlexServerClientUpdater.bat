@echo off

 Title Checking Administrative Permissions
 goto check_Permissions
 :check_Permissions
 echo Administrative permissions required. Detecting permissions...
 net session >nul 2>&1
 if [%errorLevel%] == [0] (
 	echo Success: Administrative permissions confirmed.
 ) else (
 	echo Failure: Current permissions inadequate. Please re-launch this script with a right-click action and select Run As Administrator
 )
 pause>nul
### This is the Flex Server Client Updater configuration file. Here you will specify what you want the utility to locate & replace within the PC's configuration. It is important to run this utility as an administrator on the PC or it will not update the registry keys for the Mobile client.
###


### These two lines will search for variations of the server you are working with, in the below case the tool will search for any config on the 4080 port and the 4443 port based on the criteria it is given

"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "http\://serverIPorHostnamegoeshere\:4080" --replace "https\://NewHostnameGoesHere\:4443"
"fnr.exe" --cl --dir "%ProgramData%\Spillman\Spillman" --fileMask "comdflts.txt" --find "https\://serverIPorHostnamegoeshere\:4443" --replace "https\://NewHostnameGoesHere\:4443"

## These two lines will conduct a simple replace on the registry as we are not going to search for the critera just simply replace the values with what we want

reg add HKCU\Software\Spillman\Mobile\Settings /v SpillmanPort /t REG_DWORD /d 4443 /f
reg add HKCU\Software\Spillman\Mobile\Settings /v HostAddress /t REG_SZ /d NewHostnameGoesHere /f
