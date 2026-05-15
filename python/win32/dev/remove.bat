@REM * This is the script for removing the Python dev-venv directory
@echo off
setlocal
set thispath=%~dp0
rmdir /q /s "%thispath%/../../dev/"
endlocal