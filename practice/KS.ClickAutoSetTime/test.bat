color 0c
echo off
cls
pushd %~dp0
set pa=%cd%
del /s /q C:\Wistron\Log\*.*
del /s /q C:\Wistron\Report\*.*
del /s /q C:\Wistron\WistronAplan\*.*
del /s /q C:\Wistron\WistronFlowDataBase\*.*
del /s /q C:\Wistron\WistronTestSuite\*.*
del /s /q C:\Wistron\WistronMacro\*.* 

echo %pa%
xcopy "%pa%\DataSource\*.*" C:\Wistron\DataSource /s /y
xcopy "%pa%\WistronAplan\*.*" C:\Wistron\WistronAPlan /s /y
xcopy "%pa%\WistronTestSuite\*.*" C:\Wistron\WistronTestSuite /s /y

xcopy "%pa%\Macro_Cryp\*.*" C:\Wistron\WistronMacro /s /y
xcopy "%pa%\WistronFlowDataBase_Cryp\*.*" C:\Wistron\WistronFlowDataBase /s /y

cd\
cd Wistron  
TestRunner -plan .\WistronAPlan\ReplacePQPlan.xml -report ./Report/test.xml -log ./log/test.txt



