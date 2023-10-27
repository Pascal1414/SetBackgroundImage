REM Install requests package
pip install requests

REM Create startup script

set "appdataFolder=%APPDATA%"
set "startupPath=%appdataFolder%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Current path
set "batchFilePath=%~dp0"

set "batchFileContent=py %batchFilePath%startup.py"

REM Create the StartupScript.bat file
set "batchFileName=StartupScript.bat"
(
  echo @echo off
  echo %batchFileContent%
) > "%startupPath%\%batchFileName%"

:: Run python script
py startup.py