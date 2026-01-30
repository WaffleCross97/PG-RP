@echo off
title Update PG-RP Repository
echo Updating local repository from GitHub...

cd /d "C:\Users\tidus\OneDrive\Desktop\Minecraft rp\"

:: Pull latest changes
git pull origin main

if error level 1 (
    echo ERROR: Could not update!
    echo Make sure you're connected to internet.
    pause
    exit /b 1
)

echo.
echo  Repository updated!
echo Latest files downloaded from GitHub.
echo.
echo Files include:
echo - Latest pack.zip
echo - New models from upload tool
echo - Updated resource packs
echo.
dir /b
echo.
pause