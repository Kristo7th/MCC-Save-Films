@echo off
rem Made by Vass "Kristo" Krisztian | Twitter @KristoRails | Version 1.1

rem MCC films & maps & gametypes (Halo 2A, Halo 3, Halo ODST, Halo:Reach and Halo 4) saved in their specific folders
rem 5 minute loop

ECHO "Made by Vass 'Kristo' Krisztian | Twitter @KristoRails | Version 1.1"
ECHO.
ECHO The script automatically saves your films and carnages every 60 seconds. Because of how MCC is made, I recommend going into theater mode every 8-10 games to force MCC to generate the films
ECHO It will generate them in time but going into theater mode forces it to make them quicker.
ECHO MCC can only save up to 12 temporary films. If your Halo session has +20 games, this script will save them all in a separate folder
ECHO To watch the films you will need to put them back in MCC's temporary folder (check README.txt for more information)
ECHO Thank you for using my script! May your 4 shots be TRUE! If you have any problems or suggestions tweet @KristoRails

timeout /t 120

rem Created a core folder + Halo folders (I like to be somewhat organized)
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4" mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo CE"

rem check for individual folders, create if needed
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 3 folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 2 Anniversary folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo Reach folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"\"Halo ODST - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"\"Halo ODST - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo ODST folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4"\"Halo 4 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4"\"Halo 4 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 4 folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2"\"Halo 2 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2"\"Halo 2 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 2 folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo CE"\"Halo CE - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo CE"\"Halo CE - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo CE folder created"

rem Carnage folders
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 3 Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 2 Anniversary Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo Reach Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"\"Halo ODST Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"\"Halo ODST Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo ODST Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4"\"Halo 4 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 4"\"Halo 4 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 4 Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2"\"Halo 2 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2"\"Halo 2 Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo 2 Carnage folder created"
if not exist C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo CE"\"Halo CE Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% mkdir C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo CE"\"Halo CE Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4% & ECHO "Halo CE Carnage folder created"

echo.

rem Saving much needed values
for %%X in ("C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml") do set filetime=%%~tX

:loop_start

rem Rename Films format: MAP - GAMETYPE - TIME (coming soon)

rem Copy Halo 3 films
ECHO "Copied Halo 3 films and deleted from temporary - %date% %time%"
xcopy /y C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo3\Movie C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%
del /Q C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo3\Movie

ECHO "Copied Halo 2 Anniversary films and deleted from temporary - %date% %time%"
xcopy /y C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo2A\Movie C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%
del /Q C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo2A\Movie

ECHO "Copied Halo Reach films and deleted from temporary - %date% %time%"
xcopy /y C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\HaloReach\Movie C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%
del /Q C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\HaloReach\Movie

ECHO "Copied Halo ODST films and deleted from temporary - %date% %time%"
xcopy /y C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo3ODST\Movie C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo ODST"\"Halo ODST - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%
del /Q C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\UserContent\Halo3ODST\Movie

set /p currentFileTime=<C:\Users\%USERNAME%\Desktop\"MCC Films"\carnage_report_date.txt

rem Generate carnage
setLocal enabledelayedexpansion

echo Generating carnage (if needed)
echo !filetime! (newest carnage)
echo !currentFileTime! (current carnage)

rem create a copy of the carnage

if !currentFileTime!==!filetime! GOTO :no_carnage else (
echo !filetime!>C:\Users\%USERNAME%\Desktop\"MCC Films"\carnage_report_date.txt

set "string=findstr /R /N "^^" C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml | find /C "mGamertagText""
for /f %%a in ('!string!') do set count=%%a

rem Get Gametype
for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//GameTypeName/@GameTypeName"') do set "Gametype=%%#"

rem Get Halo game (mGameEnum)
rem HaloReach = 6, Halo 3 = 2, CE = 0 , Halo 2 = 1, Halo 2A = 8, Halo ODST = ?
for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//GameEnum/@mGameEnum"') do set "Halo=%%#"

if %Halo%==0 set HaloGame=Halo CE
if %Halo%==1 set HaloGame=Halo 2
if %Halo%==2 set HaloGame=Halo 3
if %Halo%==6 set HaloGame=Halo Reach
if %Halo%==8 set HaloGame=Halo 2A

rem Get Player information
set /A index=0
:player_loop
	if %index%==%count% GOTO END
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//Player[%index%]/@mGamertagText"') do set "Player=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//Player[%index%]/@mKills"') do set "Kills=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//Player[%index%]/@mAssists"') do set "Assists=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//Player[%index%]/@mDeaths"') do set "Deaths=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml" "//Player[%index%]/@mTeamId"') do set "Team=%%#"

	set names[%index%]=%Player%
	set kills[%index%]=%Kills%
	set assists[%index%]=%Assists%
	set deaths[%index%]=%Deaths%
	set team[%index%]=%Team%

	set /a index=%index%+1
	GOTO :player_loop
:END

set redID=0
set blueID=1
set FFA=-1

set /A index=0
:player_team_sort
	if defined team[%index%] (
		if !team[%index%]!==%redID%  set team[%index%]=Red Team
		if !team[%index%]!==%blueID% set team[%index%]=Blue Team 
		if !team[%index%]!==%FFA%  set team[%index%]=FFA
	set /a index=%index%+1
	goto :player_team_sort
	)

rem Display Players
echo TIME OF GAME: %TIME%>> C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
call echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt

set /A i = 0
 
:carnage_loop
	if defined names[%i%]  (  
        call echo Player: %%names[%i%]%% Kills: %%kills[%i%]%% Assists: %%assists[%i%]%% Deaths: %%deaths[%i%]%% Team: %%team[%i%]%%>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
        call echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
		set /a i = %i% + 1         
        goto :carnage_loop     
    )
call echo ------------------NEW GAME----------------------->>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
call echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
)
:no_carnage
endlocal

for %%X in ("C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_1829_0_0.xml") do set filetime=%%~tX
cls

timeout /t 60
goto loop_start