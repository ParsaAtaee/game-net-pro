@echo off
echo ========================================================
echo    GameNet Pro - Windows Setup Builder
echo ========================================================
echo.
echo [1/2] Building web assets (Vite)...
call npm run build
if %errorlevel% neq 0 (
    echo Error during build!
    pause
    exit /b %errorlevel%
)

echo.
echo [2/2] Creating Windows Setup Installer (Electron Builder)...
call npx electron-builder --win
if %errorlevel% neq 0 (
    echo Error during packaging!
    pause
    exit /b %errorlevel%
)

echo.
echo ========================================================
echo SUCCESS! Your Windows setup installer has been generated in:
echo   .\dist-electron\GameNet Pro Setup 1.0.0.exe
echo ========================================================
pause
