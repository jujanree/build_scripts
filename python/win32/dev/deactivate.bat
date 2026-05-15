@REM * Deactivates the existing Python dev-venv
@echo off
setlocal
set thispath=%~dp0
%thispath%/../../dev/Scripts/deactivate.bat
endlocal