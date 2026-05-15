@REM * This is a script for creation of the Python dev/ venv directory 
@REM 	CONTRACT: 
@REM 		1. This is the first script to run before ALL the others
@REM 		2. Prerequisite [1]: there exists a valid `requirements.txt` file in the parent of a parent directory
@REM 			NOTE: it is recommended to keep `setup.bat` in the `scripts/dev` directory, or similar. 
@REM 		3. Prerequisite [2]: the `activate.bat` and `deactivate.bat` scripts are located in the same directory
@REM 		4. Prerequisite [3]: the `activate.bat` and `deactivate.bat` are the same as (or equiv. of) those in this repo
@REM 		5. Upon completion of the script, the new `../../dev` directory for the venv is created inside the project


@echo off
setlocal
set thispath=%~dp0
cd /D %thispath%/../..
python -m venv dev
call %thispath%/activate.bat
pip install -r requirements.txt
endlocal