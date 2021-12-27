@echo off


:delete the current mod dir or other shit

for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set DESKTOP=%%D
cd %DESKTOP%
rmdir /s /q %DESKTOP%\MultiMine
goto Setup


:Setup
echo Generating necessary Files...

:echo %DESKTOP%


cd %DESKTOP%
mkdir MultiMine
cd %DESKTOP%\MultiMine
mkdir PMMP_Installations_Here
mkdir MultiMine_Servers


curl -o start.cmd https://raw.githubusercontent.com/pmmp/PocketMine-MP/stable/start.cmd
:curl -o bin.zip https://jenkins.pmmp.io/job/PHP-8.0-Aggregate/lastSuccessfulBuild/artifact/PHP-8.0-Windows-x64.zip

echo Please place your desired pocketmine installation inside %DESKTOP%\MultiMine\PMMP_Installations_Here, before starting this program!

cd %DESKTOP%\MultiMine\MultiMine_Servers




:rmdir /s /q C:\Users\eckel\OneDrive\Desktop\Project\MultiMine
goto Launch









:Launch

set /p prmt_name=Would you like to name each server you create individually? (yes=y no=n):
if %prmt_name%==y (goto Name_y) else (goto Name_n)


:Name_y
set /p srvs_amnt=How many servers would you like? (you will have to name each):
goto Generate

:Name_n
set /p srvs_amnt=How many servers would you like? (the names will be auto generated):
goto Generate





:Generate
echo The Server folders will now be generated, press enter to continune!
pause
echo Generating Files...



set loop=0
set loop_tar=%srvs_amnt%
:loop
echo hello world
mkdir Server(%loop%)

xcopy "%DESKTOP%\MultiMine\PMMP_Installations_Here\PocketMine-MP.phar" "%DESKTOP%\MultiMine\MultiMine_Servers\Server(%loop%)" /z /i

set /a loop=%loop%+1 
if "%loop%"=="%loop_tar%" goto next
goto loop

:next


echo This text will appear after repeating "hello world" for 2 times.

pause














