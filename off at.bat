@echo off
title Jadwalkan Shutdown Otomatis

echo Program ini akan menjadwalkan komputer untuk mati pada jam yang ditentukan.
echo.
set /p jam_shutdown="Masukkan jam (HH:mm) untuk mematikan komputer: "

rem Menghapus tugas yang sudah ada jika ada, untuk menghindari error
schtasks /delete /tn "ShutdownOtomatis" /f >nul 2>&1

rem Membuat tugas penjadwalan shutdown baru
schtasks /create /tn "ShutdownOtomatis" /tr "shutdown /s /f" /sc once /st %jam_shutdown%

echo.
echo Penjadwalan berhasil!
echo Komputer akan mati pada jam %jam_shutdown%.
echo Jendela ini akan tertutup dalam 5 detik...
timeout /t 5 >nul
exit