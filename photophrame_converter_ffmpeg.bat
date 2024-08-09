@echo off
:: licensed under GPLv3
:: this is a simple drag-and-drop script that uses ffmpeg to convert videos to 720x576 MPEG-4 .mov format
set /p output_name= "Enter output file name and add .mov at the end. "
ffmpeg -i "%1" -c:v libxvid -b:v 12M -maxrate 12M -bufsize 12M -vf scale=720:576 "%output_name%"
:: echo %output_name%
pause