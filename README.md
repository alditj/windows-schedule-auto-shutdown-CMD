# windows-schedule-auto-shutdown-CMD
Program batch file ini berfungsi untuk menjadwalkan komputer mati otomatis (shutdown) pada waktu spesifik yang dimasukkan pengguna (HH:mm). Program menggunakan perintah schtasks Windows untuk membuat tugas bernama "ShutdownOtomatis" yang menjalankan shutdown /s /f sekali pada jam yang ditentukan, lalu jendela akan tertutup otomatis.
