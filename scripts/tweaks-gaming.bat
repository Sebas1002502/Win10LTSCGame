@echo off
title Win10LTSCGame - Gaming Tweaks
echo Aplicando tweaks de gaming...

:: Deshabilitar telemetria
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f

:: Game Mode
reg add "HKLM\SOFTWARE\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f

:: Deshabilitar Xbox Game Bar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f

:: Prioridad de CPU para juegos
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v Priority /t REG_DWORD /d 6 /f

echo Tweaks aplicados!
pause
