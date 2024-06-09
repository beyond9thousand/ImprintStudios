@echo off
setlocal enabledelayedexpansion

:: Prompt for the project name
set /p Project="Enter Project Name: "

:: Retrieve and format the current date as DDMMYY
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~6,2%%dt:~4,2%%dt:~2,2%"

:: Define the root directory path for the project
set "RootDir=.\%FormattedDate%_%Project%"

:: Create the root directory
md "%RootDir%"

:: Define and create subdirectories
for %%D in (
    "01_ProjectFiles",
    "02_References",
    "03_Media\01_RawFootage",
    "03_Media\02_Proxies",
    "03_Media\03_Audio\01_Music",
    "03_Media\03_Audio\02_VoiceOvers",
    "03_Media\03_Audio\03_SFX",
    "03_Media\04_Images",
    "04_Assets\01_Graphics",
    "04_Assets\02_Titles",
    "04_Assets\03_VFX",
    "05_Sequences",
    "06_Exports\01_WorkInProgress",
    "06_Exports\02_Final",
    "07_Backups",
    "08_Delivery"
) do md "%RootDir%\%%D"

:: Optional: Change to the project root directory
cd "%RootDir%"

:: End of script
