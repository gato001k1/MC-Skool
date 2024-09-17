@echo off
title Skool MC Installer
color a
mkdir mine
cd mine
if not exist alreadyrun.run (
	echo %random% > alreadyrun.run
) else (
	goto d
)
echo figure
	rem nuke
	Powershell Set-ExecutionPolicy -scope CurrentUser Unrestricted
		Powershell Get-ExecutionPolicy
		set /p select.option= install Launcher? y/n: 
		if "%select.option%"=="y" (
			goto launch
		) else (
			goto javains
		)
	:launch
Curl -L -O https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.46.1/xmcl-0.46.1-win32-x64.zip
	tar -xf xmcl-0.46.1-win32-x64.zip
	echo "X Minecraft Launcher.exe" > winl.cmd && start winl.cmd
:javains
			set /p select.option2= Install Java? y/n: 
		if "%select.option2%"=="y" (
			goto java
		) else (
			goto eof 
		)
	:java
curl -L --output update_online.paf.exe "https://portableapps.com/redir2/?a=JDK64&s=s&d=pa&f=jdkPortable64_8_Update_411_online.paf.exe"
echo "update_online.paf.exe" > winl.cmd && start winl.cmd
	start jdkPortable64_8_Update_411_online.paf.exe
		echo The file path for java is C:\Users\%USERNAME%\Downloads\CommonFiles\JDK64\bin\javaw.exe
echo save this file location for later.
echo click all of the install buttons and close the program
echo do not change the path
echo go to setting and on the java options put this path
echo the version is 1.12.2 Forge but the 
msg * Minecraft installed Now Use ur brain to figure it out :)
echo server ip N/A
echo remember to launch the MC with this as a launcher
set /p advanced.option= Advanced Options? y/n:
if EXIST advanced.x (
	goto advanced
) else (
if "%advanced.option%"=="y" (
	goto advanced
	echo %random% > advanced.x
	) else (
		goto d
	)
)
:advanced

rem def
rem random file GitHub repo
set r=0
rem github repo mods .zip file
set rep=0
rem launcher location 
set laun=0
rem mods folder location
set mod=0
title mc updater :) v1.0
:::  _____ ______   ________          ___  ___  ________  ________  ________  _________  _______   ________     
::: |\   _ \  _   \|\   ____\        |\  \|\  \|\   __  \|\   ___ \|\   __  \|\___   ___\\  ___ \ |\   __  \    
::: \ \  \\\__\ \  \ \  \___|        \ \  \\\  \ \  \|\  \ \  \_|\ \ \  \|\  \|___ \  \_\ \   __/|\ \  \|\  \   
:::  \ \  \\|__| \  \ \  \            \ \  \\\  \ \   ____\ \  \ \\ \ \   __  \   \ \  \ \ \  \_|/_\ \   _  _\  
:::   \ \  \    \ \  \ \  \____        \ \  \\\  \ \  \___|\ \  \_\\ \ \  \ \  \   \ \  \ \ \  \_|\ \ \  \\  \| 
:::    \ \__\    \ \__\ \_______\       \ \_______\ \__\    \ \_______\ \__\ \__\   \ \__\ \ \_______\ \__\\ _\ 
:::     \|__|     \|__|\|_______|        \|_______|\|__|     \|_______|\|__|\|__|    \|__|  \|_______|\|__|\|__|
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
                                                                                                         
if NOT EXIST d mkdir d
cd d
curl -O --ssl-no-revoke %r%
    for %%A in (randr-hash) do set server_file_size=%%~zA
echo %server_file_size%
cd ..
if not exist randr-hash (
set local_file_size=0
) else (
    for %%A in (randr-hash) do set local_file_size=%%~zA
)
if %local_file_size% equ %server_file_size% (
goto skip
) else (
goto elsefix
)
:elsefix
curl -O --ssl-no-revoke %r%
del /q /f /s "%mod%\*.*"
cd "%mod%"
curl -LJO --ssl-no-revoke %rep%
tar -xf mods.zip
goto skip

:skip
%laun%
goto eof

:eof
exit



:d
echo If Need to retry isntallation delete the alreadyrun.run file :)
echo starting mc
echo "X Minecraft Launcher.exe" > winl.cmd && start winl.cmd
goto EOF

:EOF
exit
