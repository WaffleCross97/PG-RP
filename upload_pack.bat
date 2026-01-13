@echo off
title PG-RP Multi-Pack Uploader
echo 📦 Preparing Java and Bedrock updates...

:: 1. Check for changes in both folders
git add .

:: 2. Create a timestamped commit
set commit_msg="Pack Update: %date% %time%"
git commit -m %commit_msg%

:: 3. Push to GitHub
echo 🚀 Uploading Waffle_Music_Disc & Bedrock to GitHub...
git push origin main

echo.
echo ✅ Done! 
echo ⏳ Wait 30 seconds for the GitHub Robot to build the .mcpack
echo 🚀 Then run your server's start.bat
pause