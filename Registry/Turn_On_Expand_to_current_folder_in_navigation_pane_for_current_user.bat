@echo off

:: Created by: Shawn Brink
:: Created on: November 5, 2021
:: Tutorial: https://www.elevenforum.com/t/turn-on-or-off-expand-to-current-folder-in-navigation-pane-of-file-explorer-in-windows-11.2544/
 

REG Add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V NavPaneExpandToCurrentFolder /T REG_DWORD /D 00000001 /F

taskkill /f /im explorer.exe
start explorer.exe