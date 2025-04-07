@echo off
setlocal enabledelayedexpansion

:: Prompt for the project name
set /p Project="Enter Project Name: "

:: Retrieve and format the current date as YYYYMMDD
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~0,4%%dt:~4,2%%dt:~6,2%"

:: Define the root directory path for the project
set "RootDir=.\%FormattedDate%_%Project%"

:: Create the root directory
md "%RootDir%"

:: Define and create subdirectories
for %%D in (
    "01_PreProduction\Briefings",
    "01_PreProduction\Moodboards",
    "02_References\Photo",
    "02_References\3D",
    "02_References\Style",
    "03_Visual_Development\01_Sketches",
    "03_Visual_Development\02_Storyboards",
    "03_Visual_Development\03_Concept_Art",
    "03_Visual_Development\04_Styleframes",
    "04_Deliverables",
    "05_Feedback\01_Internal",
    "05_Feedback\02_Client",
    "06_Backups"
) do md "%RootDir%\%%D"

cd "%RootDir%"
:: End of script
