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
    "01_Asset\01_Brief",
    "01_Asset\02_Models",
    "01_Asset\03_Textures",
    "01_Asset\04_References",
    "02_Animation\01_Storyboard",
    "02_Animation\02_Keyframes",
    "02_Animation\03_Scenes",
    "03_Render\01_Preview",
    "03_Render\02_Final",
    "04_Composite\01_Preview",
    "04_Composite\02_Output",
    "04_Composite\03_Delivery",
    "05_Backups"
) do md "%RootDir%\%%D"

:: Optionally change to the project root directory
cd "%RootDir%"

:: End of script
