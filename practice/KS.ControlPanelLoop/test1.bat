color 0c
echo off
cls
pushd %~dp0
set pa=%cd%
del /s /q C:\Wistron\Log\*.*
del /s /q C:\Wistron\Report\*.*
del /s /q C:\Wistron\WistronAplan\*.*
del /s /q C:\Wistron\WistronTestSuite\*.*

echo %pa%
xcopy "%pa%\DataSource\*.*" C:\Wistron\DataSource /s /y
xcopy "%pa%\WistronAplan\*.*" C:\Wistron\WistronAPlan /s /y
xcopy "%pa%\WistronTestSuite\*.*" C:\Wistron\WistronTestSuite /s /y

c:
cd\
cd Wistron
testrunner -plan ./WistronAplan/ReplacePQPlan.xml -report ./Report/test.xml -log ./Log/test.txt