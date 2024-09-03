@echo off
chcp 65001
title Ip Lookup Tool
mode 1000
color 4

:menu
cls
echo                        ........                                    ..:::.                                 ..:::..                                      .:::..                  ..:::.                   
echo                  .:^~!77????77!!~^..            .!7777777!.  :~7JY5PPPP5YJ7~:                      .:~7JY5PPPPP5YJ7~:               .77777777!  .^!?Y5PPPPP5Y?!^         :~7JY5PPPPPYJ7~:              
echo               :~!7?????????????????7~:.         :PGGGGGGGG^!YPGGGGGGGGGGGGGGPY!.                .~J5GGGGGGGGGGGGGGGGP5?~.           ^GGGGGGGGP~JPGGGGGGGGGGGGGGG57:   .!YPGGGGGGGGGGGGGGPJ~            
echo           .^!????????????????????????7^.       .PGGGGGGGPPGGGGGGGGGGGGGGGGGGGG5!             :75GGGGGGGGGGGGGGGGGGGGGGG57.         ^GGGGGGGGGGGGGGGGGGGGGGGGGGGGGP7.7PGGGGGGGGGGGGGGGGGGGGY:          
echo           :7????????????????????????????7^      .PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG?.         .7PGGGGGGGGGGGGGGGGGGGGGGGGGGGP!        ^GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGPGGGGGGGGGGGGGGGGGGGGGGGP~         
echo          ~??????????7!^::..:::^7??????????~...  .PGGGGGGGGGGGG5?!^^^^~7YGGGGGGGGGG?        .YGGGGGGGGGG5?~^:::^!?5GGGGGGGGGGJ.      ^GGGGGGGGGGGGPJ7~^^^~7YGGGGGGGGGGGGGGGGY7~^^^~7YGGGGGGGGGP^        
echo         ~?????????7:.       .^!7??????????7:    .PGGGGGGGGGG5~.         ~5GGGGGGGGG~      .5GGGGGGGGGJ^          .^JGGGGGGGGGY.     ^GGGGGGGGGGG?:         ^YGGGGGGGGGPGGJ^         ~5GGGGGGGGY        
echo        ^?????????^.      .^!7??????????!^.      .PGGGGGGGGGJ.            .5GGGGGGGGY      JGGGGGGGGG~               ~PGGGGGGGG?     ^GGGGGGGGGG~            .YGGGGGGGGGG?            :PGGGGGGGG^       
echo       .!????????^     .^!???????????7^:         .PGGGGGGGG5.              ~GGGGGGGGP.    :GGGGGGGGG~                 !GGGGGGGGP.    ^GGGGGGGGG?              ~GGGGGGGGGY              ?GGGGGGGG7       
echo       .????????!.  .^!???????????7~.            .PGGGGGGGB!               :PGGGGGGGG:    !GGGGGGGG5                  .PGGGGGGGG^    ^GGGGGGGGG^              :PGGGGGGGG~              !GGGGGGGG?       
echo       .????????!.^!7??????????7^:               .PGGGGGGGG^               :PGGGGGGGG:    ~GGGGGGGG5.                 .PGGGGGGGG^    ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo        7???????????????????7~:                  .PGGGGGGGG^               :PGGGGGGGG:    :PGGGGGGGG!                 7GGGGGGGGP.    ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo        ^????????????????!~:        .            .PGGGGGGGG^               :GGGGGGGGG:     ?GGGGGGGGG!               !GGGGGGGGB7     ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo         ~????????????7^.        .:!7!:.         .PGGGGGGGG^               :GGGGGGGGG:     .YGGGGGGGGGY~.         .~YGGGGGGGGBY.     ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo          ^???????????!^::::::^~!7?????7~:.      .PGGGGGGGG^               :GGGGGGGGG:      .JGGGGGGGGGG5J!~^^^~7J5GGGGGGGGGBJ.      ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo           :!???????????????????????????J?!.     :PGGGGGGGG^               :GGGGGGGGG:        !5GGGGGGGGGGGGGGGGGGGGGGGGGGGP~        ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo            .:!?????????????????????????7~.      .PGGGGGGGG^               :GGGGGGGGG:         .!5GGGGGGGGGGGGGGGGGGGGGGG5!.         ^GGGGGGGGP.              :PGGGGGGGG:              !GGGGGGGG?       
echo               .^!7?????????????????7!~:.        .GGGGGGGGB^               :GGGGGGGGG:           .^?YPGGGGGGGGGGGGGGGP57^            ^GGGGGGGGP.              :GGGGGGGGG:              !BGGGGGGBJ       
echo                  .:^~!!7777777!~~^:.            .!!!!!!!!!.               .!!!!!!!!!.               :^!?JY55555YJ?!^:               .!!!!!!!!!.              .!!!!!!!!!.              :!!!!!!!!^ 

echo =================================================
echo 1) Exit
echo 2) Ip Geo Lookup
echo ================================================
set /p choice=Enter your choice:

if "%choice&"=="" goto menu
if "%choice&"=="1" goto end
if "%choice&"=="2" goto ip_geo_lookup

:ip_geo_lookup
cls
echo ███████╗███╗   ██╗████████╗███████╗██████╗     ██╗██████╗ 
echo ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗    ██║██╔══██╗
echo █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝    ██║██████╔╝
echo ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗    ██║██╔═══╝ 
echo ███████╗██║ ╚████║   ██║   ███████╗██║  ██║    ██║██║     
echo ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝
echo. ================================================
echo Enter An IP address to lookup (or type back to return to the main menu):
set /p ip=
if "%ip%"=="back" goto menu

curl "https://ipinfo.io/%ip%/json" -o geolocation.json
echo ==================================
echo IP Geolocation for &`%ip%:
type geolocation.json
del gelocation.json
echo =================================
pause
goto ip_geo_lookup

:end