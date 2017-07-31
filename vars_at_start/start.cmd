:: echo
:: Display messages on screen, turn command-echoing on or off.

:: "%~dp0"
:: The %~dp0 (that's a zero) variable when referenced within a Windows batch file will expand to 
:: the drive letter and path of that batch file. The variables %0-%9 refer to the command line 
:: parameters of the batch file. %1-%9 refer to command line arguments after the batch file name. 
:: %0 refers to the batch file itself.

:: as a note this CMD or BAT needs to run as admin in order to work correctly

@echo off

set ROLE=controller
timeout /t 1
start "%programfiles%/derivative/touchdesigner099/bin/touchdesigner099.exe" "%~dp0/project.toe"

set ROLE=node
timeout /t 1
start "%programfiles%/derivative/touchdesigner099/bin/touchdesigner099.exe" "%~dp0/project.toe""