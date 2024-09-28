@echo off
cls
color 0A

:: ASCII Art Header
echo.
echo         *****************************************
echo         *               y1noN v1.0              *
echo         *****************************************
echo.
echo         *****************************************
echo         *          * EMAIL SEARCH TOOL *       *
echo         *****************************************
echo.

:: Main Menu
:menu
echo.
echo   [1] - SEARCH FOR EMAIL ADDRESS
echo   [2] - VIEW SEARCH HISTORY
echo   [3] - HELP CENTER
echo   [4] - EXIT
echo.
echo         *****************************************
echo.

set /p choice="SELECT AN OPTION (1-4): "

if "%choice%"=="1" goto search_email
if "%choice%"=="2" goto view_history
if "%choice%"=="3" goto help
if "%choice%"=="4" exit

echo [!] INVALID CHOICE. PLEASE TRY AGAIN...
timeout /t 2 > nul
goto menu

:search_email
cls
echo         *****************************************
echo         *           SEARCH FOR EMAIL           *
echo         *****************************************
echo.

:: Get user's email for searching
set /p search_input="ENTER EMAIL TO SEARCH FOR: "

:: Simulated email search (this now considers every input valid)
echo.
echo SEARCHING FOR EMAIL "%search_input%"...
timeout /t 2 > nul

:: Simulate finding the email
echo [*] EMAIL "%search_input%" FOUND SUCCESSFULLY!
echo.

pause
goto menu

:view_history
cls
echo         *****************************************
echo         *              SEARCH HISTORY          *
echo         *****************************************
echo.
echo   [!] THIS FEATURE IS NOT YET IMPLEMENTED. STAY TUNED!
echo.
pause
goto menu

:help
cls
echo         *****************************************
echo         *               HELP CENTER            *
echo         *****************************************
echo.
echo THIS TOOL SIMULATES A SEARCH FOR EMAIL ADDRESSES.
echo TO USE THIS TOOL:
echo   1. SELECT "SEARCH FOR EMAIL ADDRESS" FROM THE MAIN MENU.
echo   2. ENTER AN EMAIL TO SEARCH FOR.
echo   3. VIEW THE SIMULATED EMAIL RESULTS.
echo.
echo NOTE: THIS IS A SIMULATED TOOL. ACTUAL EMAIL SEARCH FUNCTIONALITY IS NOT
echo IMPLEMENTED IN THIS VERSION. USE RESPONSIBLY.
echo.
pause
goto menu
