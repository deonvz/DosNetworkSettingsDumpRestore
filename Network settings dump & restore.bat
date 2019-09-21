@Echo Deon`s Network Settings Utility
@Echo ==================
@choice /c:dr /m "Press D to Dump Network settings or R to reinstate from dump"

if errorlevel 2 goto Reinstate
if errorlevel 1 goto Dump

Rem ====== Restore settings from file

:Reinstate
@cls
@netsh -f networksettings.txt
@Echo.....Network Settings Restored !
pause

Rem ======= Dump Current Settings to file

:Dump

@cls
@netsh -c interface dump > networksettings.txt
@Echo.....Network Settings Dumped to file ( networksettings.txt ) !
pause

Exit