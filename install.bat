:: Install requests package
pip install requests

:: Create startup script

set "appdataFolder=%APPDATA%"
set "startupPath=%appdataFolder%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Current path
set "batchFilePath=%~dp0"

set "batchFileContent=py %batchFilePath%startup.py"

set "batchFileName=StartupScript.bat"
(
  echo @echo off
  echo %batchFileContent%
) > "%startupPath%\%batchFileName%"

:: Run python script
py startup.py