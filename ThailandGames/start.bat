@echo off
title ThailandGames Bot
color 0A
cls

echo.
echo  ==========================================
echo   ThailandGames Bot
echo  ==========================================
echo.

:: تحقق من Node.js
node -v >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo  [ERROR] Node.js غير مثبت!
    echo  حمله من: https://nodejs.org
    echo.
    pause
    exit /b
)

:: تثبيت المكتبات اذا ما موجودة
IF NOT EXIST "node_modules" (
    echo  جاري تثبيت المكتبات... انتظر
    npm install
    echo.
)

:: تحقق من config.json
IF NOT EXIST "config.json" (
    echo  [ERROR] ملف config.json غير موجود!
    echo  تأكد ان الملف موجود في نفس مجلد البوت
    echo.
    pause
    exit /b
)

echo  جاري تشغيل البوت...
echo.
node index.js

pause
