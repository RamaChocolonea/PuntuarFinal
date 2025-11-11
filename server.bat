@echo off
title Servidor Puntu.ar

:: Inicia el backend en una nueva ventana
start "Backend" cmd /k "cd backend && npm run serve:prod"

:: Esperar unos segundos para asegurarnos de que el servidor levante
timeout /t 15 /nobreak >nul

:: Iniciar ngrok en otra ventana exponiendo el puerto 3000
start "Ngrok" cmd /k ""C:\Program Files\ngrok.exe" http 3000"

:: Mensaje informativo
echo Servidor y Ngrok iniciados correctamente.
