@echo off
echo ========================================================
echo SERVER REKAM LAYAR (LOCAL SECURE CONTEXT)
echo Memastikan izin akses layar (getDisplayMedia) berfungsi...
echo ========================================================
echo Jangan tutup jendela hitam ini selama merekam!

:: Start a tiny Python HTTP server in the background
start /B python -m http.server 8765 > nul 2>&1

:: Wait 2 seconds for server to boot
timeout /t 2 /nobreak > nul

:: Open the web app securely via localhost
start http://localhost:8765/Rekam-Layar-Lite.html
