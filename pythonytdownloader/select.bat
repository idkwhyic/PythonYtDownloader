@ECHO off
cls
:again
cls
ECHO.
ECHO 00. To install python
ECHO 1. Python MP3 Downloader [Youtube]
ECHO 2. Python MP4 Downloader [Youtube]
ECHO 3. Copy Downloaded file to desktop [Fixed]
set choice=
set /p choice=Type the number to select. : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='00' goto pyd
if '%choice%'=='1' goto pymp3
if '%choice%'=='2' goto pymp4
if '%choice%'=='3' goto movefile
ECHO "%choice%" is not valid, try again
ECHO.
goto again
:pyd
start https://www.python.org/downloads/
goto again
:pymp3
start C:\admin\yts\mp3.py
goto end
:pymp4
start C:\admin\yts\mp4.py
goto end
:movefile
start C:\admin\yts\move.bat
goto end
:end
goto again