@echo off
title Fizzora local store
cd /d "%~dp0"
set PORT=3001
set "NODEEXE=%ProgramFiles%\nodejs\node.exe"
if not exist "%NODEEXE%" set "NODEEXE=%LocalAppData%\Programs\nodejs\node.exe"
if not exist "%NODEEXE%" (
  echo.
  echo Node.js was not found.
  echo Install the current LTS version from https://nodejs.org then run this file again.
  echo.
  pause
  exit /b 1
)
echo.
echo Starting Fizzora at http://localhost:3001
echo Keep this window open while using the store.
echo.
"%NODEEXE%" server.js
pause
