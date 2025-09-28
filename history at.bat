@echo off
title Hapus Riwayat Tugas Shutdown

rem Menghapus semua tugas shutdown dengan nama "ShutdownOtomatis"
schtasks /delete /tn "ShutdownOtomatis" /f >nul 2>&1

echo Semua tugas shutdown otomatis telah dihapus.
echo.
echo Jendela ini akan tertutup dalam 5 detik...
timeout /t 5 >nul
exit