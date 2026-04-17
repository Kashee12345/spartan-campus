@echo off
title Spartan Campus — GitHub Push
color 0A
cd /d "%~dp0"

echo.
echo  Setting up Git identity...
git config --global user.email "kashee123@aol.com"
git config --global user.name "Kashee12345"

echo  Staging all files...
git add .

echo  Committing...
git commit -m "Initial commit — Spartan Campus"

echo  Pushing to GitHub...
git push -u origin main

echo.
echo  ===================================
echo   DONE! Opening your GitHub repo...
echo  ===================================
echo.
start https://github.com/Kashee12345/spartan-campus
pause
