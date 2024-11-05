@ECHO OFF
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TITLE Set Windows Firewall Features for Windows 7-2008 or later
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Purpose: Auto-set Windows Firewall Features for Windows 7-2008 or later.
:: Version: 2.0
:: Author: ZeusABJ
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Clear screen to hide "UNC paths not supported" error message:
CLS

:: Display a message to the user:
ECHO Setting Windows Firewall Features for Windows 7-2008 or later...
ECHO.

:: Run NETSH commands to disable/enable (off/on) individual firewall profiles:
netsh advfirewall set domainprofile state off
:: netsh advfirewall set privateprofile state off
:: netsh advfirewall set publicprofile state off

:: Run NETSH commands to disable/enable (off/on) all firewall profiles:
:: netsh advfirewall set allprofiles state off

:: Run NETSH command to enable Remote Desktop exception:
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes

:: Display completion notice:
ECHO Done!

:: Uncomment to view script results:
:: ECHO.
:: PAUSE
