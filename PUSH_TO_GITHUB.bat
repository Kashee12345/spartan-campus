@echo off
title Spartan Campus — GitHub Push
color 0A
cd /d "%~dp0"

echo.
echo  Setting up Git identity...
git config user.email "kashee123@aol.com"
git config user.name "Kashee12345"
git config pull.rebase true

echo.
echo  Staging all changes...
git add -A

echo.
echo  Committing (if there is anything new)...
git diff --cached --quiet
if %errorlevel% neq 0 (
  set "TIMESTAMP=%date:~10,4%-%date:~4,2%-%date:~7,2% %time:~0,8%"
  git commit -m "Spartan Campus update - %TIMESTAMP%"
) else (
  echo  Nothing new to commit.
)

echo.
echo  Pulling latest from GitHub (clean tree now)...
git pull --rebase --autostash origin main
if %errorlevel% neq 0 (
  echo.
  echo  WARNING: Pull had issues. Tell Claude exactly what error appeared above.
  pause
  exit /b 1
)

echo.
echo  Pushing to GitHub...
git push origin main
if %errorlevel% neq 0 (
  echo.
  echo  Push failed. Tell Claude exactly what error appeared above.
  pause
  exit /b 1
)

echo.
echo  ===================================
echo   DONE! Site will update in ~2 min
echo  ===================================
echo.
start https://kashee12345.github.io/spartan-campus/
pause
