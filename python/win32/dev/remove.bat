@REM * This is the script for removing the Python dev-venv directory
@echo off
set thispath=%~dp0
call "%thispath%/deactivate.bat"
rmdir /q /s "%thispath%/../../dev/"