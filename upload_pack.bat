@echo off
title PG-RP 1.21.11 Uploader
echo 📦 Sending textures to WaffleCross97/PG-RP...

:: Stage everything
git add .

:: Commit with a timestamp
git commit -m "Pack Update: %date% %time%"

:: Push to the main branch
echo 🚀 Uploading to GitHub...
git push -u origin main

echo.
echo ✅ Done! Check your GitHub Actions tab.
pause