@echo off
rem Made by Vass "Kristo" Krisztian | Twitter @TrueKristo | Version 1.7

rem MCC films & maps & gametypes (Halo 2A, Halo 3, Halo ODST, Halo:Reach and Halo 4) saved in their specific folders
rem 5 minute loop

ECHO "Made by Vass 'Kristo' Krisztian | Twitter @TrueKristo | Version 1.7"
ECHO.
ECHO The script automatically saves your films and carnages every 60 seconds. Because of how MCC is made, I recommend going into theater mode every 8-10 games to force MCC to generate the films
ECHO It will generate them in time but going into theater mode forces it to make them quicker.
ECHO MCC can only save up to 12 temporary films. If your Halo session has +20 games, this script will save them all in a separate folder
ECHO To watch the films you will need to put them back in MCC's temporary folder (check README.txt for more information)
ECHO Thank you for using my script! May your 4 shots be TRUE! If you have any problems or suggestions tweet @Kristo7th

timeout /t 120

rem Created a core folder + Halo folders
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
for %%X in ("C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml") do set filetime=%%~tX

:loop_start

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
echo hour=%hour%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
echo min=%min%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
echo secs=%secs%


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


rem Change Halo 3 films


rem Generate carnage
setLocal enabledelayedexpansion

echo Generating carnage (if needed)
echo !filetime! (newest carnage)
echo !currentFileTime! (current carnage)

rem create a copy of the carnage

if !currentFileTime!==!filetime! GOTO :no_carnage else (
echo !filetime!>C:\Users\%USERNAME%\Desktop\"MCC Films"\carnage_report_date.txt

set "string=findstr /R /N "^^" C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml | find /C "mGamertagText""
for /f %%a in ('!string!') do set count=%%a

rem Get Gametype
for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//GameTypeName/@GameTypeName"') do set "Gametype=%%#"

rem Get Halo game (mGameEnum)
rem HaloReach = 6, Halo 3 = 2, CE = 0 , Halo 2 = 1, Halo 2A = 8, Halo ODST = ?
for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//GameEnum/@mGameEnum"') do set "Halo=%%#"

if %Halo%==0 set HaloGame=Halo CE
if %Halo%==1 set HaloGame=Halo 2
if %Halo%==2 set HaloGame=Halo 3
if %Halo%==6 set HaloGame=Halo Reach
if %Halo%==8 set HaloGame=Halo 2A

rem Get Player information
set /A index=0
:player_loop
	if %index%==%count% GOTO END
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@mGamertagText"') do set "Player=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@Score"') do set "Score=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@mKills"') do set "Kills=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@mAssists"') do set "Assists=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@mDeaths"') do set "Deaths=%%#"
		for /f "tokens=* delims=" %%# in ('xpath.bat "C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml" "//Player[%index%]/@mTeamId"') do set "Team=%%#"

	set names[%index%]=%Player%
	set scores[%index%]=%Score%
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

rem Thankfully the XML MCC provides is organizes players by who won first.
rem If you see this comment, CE takes the most skill out of all Halos

echo ^<playerInfo^> >>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"carnage_report.xml
:carnage_loop
	if defined names[%i%]  (  
        call echo Player: %%names[%i%]%% Kills: %%kills[%i%]%% Assists: %%assists[%i%]%% Deaths: %%deaths[%i%]%% Team: %%team[%i%]%%>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
        call echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
		rem Creating XML report
		echo ^<Player^>!names[%i%]!^</Player^>^<Score^>!scores[%i%]!^</Score^>^<Kills^>!kills[%i%]!^</Kills^>^<Deaths^>!deaths[%i%]!^</Deaths^>^<Assists^>!assists[%i%]!^</Assists^>^<Team^>!team[%i%]!^</Team^>^ >>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"carnage_report.xml
		echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"carnage_report.xml
		set /a i = %i% + 1         
        goto :carnage_loop     
    )
echo ^</playerInfo^> >>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"carnage_report.xml
call echo ------------------NEW GAME----------------------->>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
call echo.>>C:\Users\%USERNAME%\Desktop\"MCC Films"\"%HaloGame%"\"%HaloGame% Carnage - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%""\"%HaloGame% %Gametype%.txt
)

:no_carnage

rem Rename Films format: MAP - TIME (time the film was created by MCC)

rem Halo 3 maps

set construct=asq_constr
set epitaph=asq_salvat
set guardian=asq_guardi
set highground=asq_deadlo
set isolation=asq_isolat
set lastresort=asq_zanzib
set narrows=asq_chill_
set sandtrap=asq_shrine
set snowboad=asq_snowbo
set pit=asq_cyberd
set valhalla=asq_riverw
set foundry=asq_wareho
set ratnest=asq_armory
set standoff=asq_bunker
set avalanche=asq_sidewi
set blackout=asq_lockou
set ghosttown=asq_ghostt
set coldstorage=asq_chillo
set assembly=asq_descen
set orbital=asq_spacec
set sandbox=asq_sandbo
set citadel=asq_fortre
set heretic=asq_midshi
set longshore=asq_docks_

	
for %%F in (C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 3"\"Halo 3 - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%\*.mov) do (
  set source=%%~nxF
  set path=%%F
  echo !path!
  echo Movie name: !source!
  echo "C:\Users\%USERNAME%\Desktop\MCC Films\Halo 3\Halo 3 - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!"
  set halo3_map=!source:~0,10!
  for %%a in ("C:\Users\%USERNAME%\Desktop\MCC Films\Halo 3\Halo 3 - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!") do set FileDate=%%~ta
  echo !FileDate!
  set game_hour=!FileDate:~11,2!
  set game_minute=!FileDate:~14,2!
  set moment=!FileDate:~17,2!
  echo !game_hour! !game_minute! !moment!
  set created=!game_hour! !game_minute! !moment!
  echo !created!
  if "!halo3_map!"=="!construct!" (rename "!path!" "Construct_!created!.mov")
  if "!halo3_map!"=="!epitaph!" (rename "!path!" "Epitaph_!created!.mov")
  if "!halo3_map!"=="!guardian!" (rename "!path!" "Guardian_!created!.mov")
  if "!halo3_map!"=="!highground!" (rename "!path!" "High Ground_!created!.mov")
  if "!halo3_map!"=="!isolation!" (rename "!path!" "Isolation_!created!.mov")
  if "!halo3_map!"=="!lastresort!" (rename "!path!" "Last Resort_!created!.mov")
  if "!halo3_map!"=="!narrows!" (rename "!path!" "Narrows_!created!.mov")
  if "!halo3_map!"=="!sandtrap!" (rename "!path!" "Sandtrap_!created!.mov")
  if "!halo3_map!"=="!snowboad!" (rename "!path!" "Snowbound_!created!.mov")
  if "!halo3_map!"=="!pit!" (rename "!path!" "Pit_!created!.mov")
  if "!halo3_map!"=="!valhalla!" (rename "!path!" "Valhalla_!created!.mov")
  if "!halo3_map!"=="!foundry!" (rename "!path!" "Foundry_!created!.mov")
  if "!halo3_map!"=="!ratnest!" (rename "!path!" "Rat's Nest_!created!.mov")
  if "!halo3_map!"=="!standoff!" (rename "!path!" "Standoff_!created!.mov")
  if "!halo3_map!"=="!avalanche!" (rename "!path!" "Avalanche_!created!.mov")
  if "!halo3_map!"=="!blackout!" (rename "!path!" "Blackout_!created!.mov")
  if "!halo3_map!"=="!ghosttown!" (rename "!path!" "Ghost Town_!created!.mov")
  if "!halo3_map!"=="!coldstorage!" (rename "!path!" "Cold Storage_!created!.mov")
  if "!halo3_map!"=="!assembly!" (rename "!path!" "Assembly_!created!.mov")
  if "!halo3_map!"=="!orbital!" (rename "!path!" "Orbital_!created!.mov")
  if "!halo3_map!"=="!sandbox!" (rename "!path!" "Sandbox_!created!.mov")
  if "!halo3_map!"=="!citadel!" (rename "!path!" "Citadel_!created!.mov")
  if "!halo3_map!"=="!heretic!" (rename "!path!" "Heretic_!created!.mov")
  if "!halo3_map!"=="!longshore!" (rename "!path!" "Longshore_!created!.mov")
  echo. 
)

rem Halo 2A maps
set shrine=ca_sanctu
set lockout=ca_lockou
set warlock=ca_warloc
set ascension=ca_ascens
set zanzibar=ca_zanzib
set bloodgulch=ca_coagul
set remnant=ca_relic_

for %%F in (C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo 2A"\"Halo 2A - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%\*.mov) do (
  set source=%%~nxF
  set path=%%F
  echo !path!
  echo Movie name: !source!
  echo "C:\Users\%USERNAME%\Desktop\MCC Films\Halo 2A\Halo 2A - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!"
  set halo2A_map=!source:~11,9!
  for %%a in ("C:\Users\%USERNAME%\Desktop\MCC Films\Halo 2A\Halo 2A - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!") do set FileDate=%%~ta
  echo !FileDate!
  set game_hour=!FileDate:~11,2!
  set game_minute=!FileDate:~14,2!
  set moment=!FileDate:~17,2!
  echo !game_hour! !game_minute! !moment!
  set created=!game_hour! !game_minute! !moment!
  echo !created!
  if "!halo2A_map!"=="!shrine!" (rename "!path!" "Shrine_!created!.mov")
  if "!halo2A_map!"=="!lockout!" (rename "!path!" "Lockout_!created!.mov")
  if "!halo2A_map!"=="!warlock!" (rename "!path!" "Warlock_!created!.mov")
  if "!halo2A_map!"=="!ascension!" (rename "!path!" "Ascension_!created!.mov")
  if "!halo2A_map!"=="!zanzibar!" (rename "!path!" "Zanzibar_!created!.mov")
  if "!halo2A_map!"=="!bloodgulch!" (rename "!path!" "Blood Gulch_!created!.mov")
  if "!halo2A_map!"=="!remnant!" (rename "!path!" "Remnant_!created!.mov")
  echo. 
)

rem Halo Reach Maps

set boardwalk=50_panopt
set boneyard=70_boneya
set countdown=45_launch
set powerhouse=30_settle
set reflection=52_ivory_
set spire=35_island
set swordbase=20_sword_
set zealot=45_aftshi
set anchor=dlc_slaye
set breakpoint=dlc_invas
set tempest=dlc_mediu
set condemned=condemned
set highlands=trainingp
set battlecanyon=cex_beave
set penance=cex_damna
set ridgeline=cex_timbe
set solitary=cex_priso
set highnoon=cex_hange
set breakneck=cex_headl
set forgeworld=forge_hal


for %%F in (C:\Users\%USERNAME%\Desktop\"MCC Films"\"Halo Reach"\"Halo Reach - "%date:~-10,2%"-"%date:~7,2%"-"%date:~-4,4%\*.mov) do (
  set source=%%~nxF
  set path=%%F
  echo !path!
  echo Movie name: !source!
  echo "C:\Users\%USERNAME%\Desktop\MCC Films\Halo Reach\Halo Reach - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!"
  set haloreach_map=!source:~11,9!
  for %%a in ("C:\Users\%USERNAME%\Desktop\MCC Films\Halo Reach\Halo Reach - %date:~-10,2%-%date:~7,2%-%date:~-4,4%\!source!") do set FileDate=%%~ta
  echo !FileDate!
  set game_hour=!FileDate:~11,2!
  set game_minute=!FileDate:~14,2!
  set moment=!FileDate:~17,2!
  echo !game_hour! !game_minute! !moment!
  set created=!game_hour! !game_minute! !moment!
  echo !created!
  if "!haloreach_map!"=="!boardwalk!" (rename "!path!" "Boardwalk_!created!.mov")
  if "!haloreach_map!"=="!boneyard!" (rename "!path!" "Boneyard!created!.mov")
  if "!haloreach_map!"=="!countdown!" (rename "!path!" "Countdown_!created!.mov")
  if "!haloreach_map!"=="!powerhouse!" (rename "!path!" "Powerhouse_!created!.mov")
  if "!haloreach_map!"=="!reflection!" (rename "!path!" "Reflection_!created!.mov")
  if "!haloreach_map!"=="!spire!" (rename "!path!" "Spire_!created!.mov")
  if "!haloreach_map!"=="!swordbase!" (rename "!path!" "Sword Base_!created!.mov")
  if "!haloreach_map!"=="!zealot!" (rename "!path!" "Zealot_!created!.mov")
  if "!haloreach_map!"=="!anchor!" (rename "!path!" "Anchor 9_!created!.mov")
  if "!haloreach_map!"=="!breakpoint!" (rename "!path!" "Breakpoint_!created!.mov")
  if "!haloreach_map!"=="!condemned!" (rename "!path!" "Condemned_!created!.mov")
  if "!haloreach_map!"=="!highlands!" (rename "!path!" "Highlands_!created!.mov")
  if "!haloreach_map!"=="!battlecanyon!" (rename "!path!" "Battle Canyon_!created!.mov")
  if "!haloreach_map!"=="!penance!" (rename "!path!" "Penance_!created!.mov")
  if "!haloreach_map!"=="!ridgeline!" (rename "!path!" "Ridgeline_!created!.mov")
  if "!haloreach_map!"=="!solitary!" (rename "!path!" "Solitary_!created!.mov")
  if "!haloreach_map!"=="!highnoon!" (rename "!path!" "Highnoon_!created!.mov")
  if "!haloreach_map!"=="!breakneck!" (rename "!path!" "Breakneck_!created!.mov")
  if "!haloreach_map!"=="!forgeworld!" (rename "!path!" "Forge World_!created!.mov")
  if "!haloreach_map!"=="!tempest!" (rename "!path!" "Tempest_!created!.mov")
  
  echo. 
)


endlocal

for %%X in ("C:\Users\%USERNAME%\AppData\LocalLow\MCC\Temporary\mpcarnagereport1_3385_0_0.xml") do set filetime=%%~tX

timeout /t 60
cls
goto loop_start