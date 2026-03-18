@echo off
title Cyber Toolkit
color 0A

:menu
cls
echo ==========================
echo    CYBER TOOLKIT MENU
echo ==========================
echo.

echo [NETWORKING]
echo 1. Open Networking Folder
echo 2. Nmap (CLI)
echo 3. Wireshark
echo 4. Fiddler
echo.

echo [PENTEST]
echo 5. Burp Suite
echo 6. Open Pentest Folder
echo.

echo [UTILITIES]
echo 7. Process Explorer
echo 8. TCPView
echo 9. Autoruns
echo 10. Strings
echo 11. Everything
echo.

echo [FORENSICS]
echo 12. Process Monitor
echo 13. Open Forensics Folder
echo.

echo [EMAIL / DECODE]
echo 14. CyberChef
echo.

echo [DOCS / CHEATSHEETS]
echo 15. Nmap Cheat Sheet
echo 16. Windows Triage Notes
echo 17. Email Analysis Notes
echo 18. MASTER KB
echo 19. Links
echo.

echo [FILES / CONTENT]
echo 20. PCAPs Folder
echo 21. Payloads Folder
echo 22. Docs Folder
echo 23. Wordlists Folder
echo 24. Logs Folder
echo 25. Malware Folder
echo.

echo [EXIT]
echo 0. Exit
echo.

set /p choice=Enter choice:

:: NETWORKING
if %choice%==1 start "" "..\Tools\Networking"
if %choice%==2 start cmd /k "cd /d ..\Tools\Networking\Nmap && nmap.exe"
if %choice%==3 start "" "..\Tools\Networking\Wireshark\Wireshark.exe"
if %choice%==4 start "" "..\Tools\Networking\Fiddler\Fiddler.exe"

:: PENTEST
if %choice%==5 start "" "..\Tools\Pentest\BurpSuite\BurpSuiteCommunity.exe"
if %choice%==6 start "" "..\Tools\Pentest"

:: UTILITIES
if %choice%==7 start "" "..\Tools\Utilities\Sysinternals\procexp.exe"
if %choice%==8 start "" "..\Tools\Utilities\Sysinternals\tcpview.exe"
if %choice%==9 start "" "..\Tools\Utilities\Sysinternals\autoruns.exe"
if %choice%==10 start cmd /k "..\Tools\Utilities\Sysinternals\strings.exe"
if %choice%==11 start "" "..\Tools\Utilities\Everything\Everything.exe"

:: FORENSICS
if %choice%==12 start "" "..\Tools\Utilities\Sysinternals\procmon.exe"
if %choice%==13 start "" "..\Tools\Forensics"

:: EMAIL / DECODE
if %choice%==14 start "" "..\Tools\Email\CyberChef\CyberChef_v10.22.1.html"

:: DOCS
if %choice%==15 notepad "..\Docs\CheatSheets\nmap.txt"
if %choice%==16 notepad "..\Docs\CheatSheets\windows_triage.txt"
if %choice%==17 notepad "..\Docs\CheatSheets\email_analysis.txt"
if %choice%==18 notepad "..\Docs\KB\MASTER_KB.txt"
if %choice%==19 notepad "..\Docs\links.txt"

:: FILES
if %choice%==20 start "" "..\PCAPs"
if %choice%==21 start "" "..\Payloads"
if %choice%==22 start "" "..\Docs"
if %choice%==23 start "" "..\Wordlists"
if %choice%==24 start "" "..\Logs"
if %choice%==25 start "" "..\Tools\Malware"

if %choice%==0 exit

goto menu