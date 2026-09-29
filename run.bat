@echo off
title PuzzleCam - UKM IT 2026 Launcher
cls
echo ================================================================
echo               PUZZLE-CAM - UKM IT 2026 LAUNCHER
echo ================================================================
echo.
echo Sedang menyiapkan server lokal...
echo Peramban (browser) akan terbuka otomatis di:
echo http://localhost:5500
echo.
echo Tips: Untuk menghentikan server, tutup jendela ini.
echo ================================================================

start http://localhost:5500
python -m http.server 5500

pause
