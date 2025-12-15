@echo off
title SSH Tunnel to SQL Server - FREE!
color 0A

echo ========================================
echo   SSH Tunnel for SQL Server
echo   100%% FREE - No Credit Card!
echo ========================================
echo.
echo IMPORTANT: Keep this window open!
echo.
echo Press Ctrl+C to stop the tunnel
echo ========================================
echo.
echo Connecting to localhost.run...
echo.

ssh -R 80:localhost:1433 localhost.run

pause
