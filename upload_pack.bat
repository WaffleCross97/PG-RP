@echo off
title PG-RP Multi-Pack Uploader
echo 📦 Syncing with GitHub Robot...

:: 1. Pull the robot's changes first (Important!)
git pull origin main --rebase

:: 2. Stage your new textures
git add .

:: 3. Commit your changes
set commit_msg="Pack Update: %date% %time%"
git commit -m %commit_msg%

:: 4. Push everything back up
echo 🚀 Uploading to GitHub...
git push origin main

echo.
echo ✅ Done! Wait 30 seconds for the robot to finish, then start your server.
pause