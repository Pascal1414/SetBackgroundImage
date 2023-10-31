REM Install requests package
pip install requests

REM Create startup script

set "appdataFolder=%APPDATA%"
set "startupPath=%appdataFolder%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Current path
set "batchFilePath=%~dp0"

set "batchFileContent=py %batchFilePath%startup.pyw"

REM Create the StartupScript.bat file
set "batchFileName=StartupScript.bat"
(
  echo @echo off
  echo %batchFileContent%
) > "%startupPath%\%batchFileName%"

REM Run python script
py startup.pyw