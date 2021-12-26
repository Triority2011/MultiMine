@echo off


:delete the current mod dir or other shit

for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set DESKTOP=%%D
cd %DESKTOP%
rmdir /s /q %DESKTOP%\MultiMine
goto Setup


:Setup
echo Generating necessary Files...

echo %DESKTOP%

cd %DESKTOP%
mkdir MultiMine
cd %DESKTOP%\MultiMine
mkdir PMMP_Installations_Here
mkdir MultiMine_Servers


echo Please place your desired pocketmine installation inside %DESKTOP%\MultiMine\PMMP_Installations_Here, before starting this program!

cd %DESKTOP%\MultiMine\MultiMine_Servers




:rmdir /s /q C:\Users\eckel\OneDrive\Desktop\Project\MultiMine
goto Launch









:Launch
set /p srvs_amnt=How many servers would you like? (you will have to name each):

















