@echo off
title Batalkan Shutdown Otomatis

schtasks /delete /tn "ShutdownOtomatis" /f >nul 2>&1

echo Tugas shutdown otomatis telah dibatalkan.
echo Jendela ini akan tertutup dalam 5 detik...
timeout /t 5 >nul
exit