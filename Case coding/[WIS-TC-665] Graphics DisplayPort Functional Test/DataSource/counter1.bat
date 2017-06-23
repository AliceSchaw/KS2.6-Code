@echo off&setlocal enabledelayedexpansi
set /p t=<C:\Wistron\DataSource\reboot.txt
echo %t%
set /a t=%t%
echo %t%
if %t% equ 11 echo 11>C:\Wistron\DataSource\reboot.txt
if not %t% equ 11 set /a t=%t%-1
echo %t%
echo %t%>C:\Wistron\DataSource\reboot.txt