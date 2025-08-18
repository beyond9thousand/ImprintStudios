@echo off
setlocal enabledelayedexpansion

:: Prompt for the project name
set /p Project="Enter Event AV Project Name: "

:: Retrieve and format the current date as DDMMYY
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

:: Define the root directory path for the project
set "RootDir=.\%FormattedDate%_%Project%_EventAV"

:: Create the root directory
md "%RootDir%"

:: Define and create subdirectories
for %%D in (
    "01_Brief\Creative_Brief",
    "01_Brief\Scripts",
    "01_Brief\References",
    "02_Client_Inputs\Logos",
    "02_Client_Inputs\Brand_Guidelines",
    "02_Client_Inputs\Product_Assets",
    "02_Client_Inputs\Stage_&_Screen_Specs",
    "02_Client_Inputs\Music_Tracks",
    "02_Client_Inputs\VO_&_Audio",
    "03_Client_Feedback\R1_Feedback",
    "03_Client_Feedback\R2_Feedback",
    "03_Client_Feedback\Final_Approval",
    "04_Preproduction\Storyboards",
    "04_Preproduction\Moodboards",
    "04_Preproduction\Animatics",
    "04_Preproduction\Keyframes",
    "04_Preproduction\Styleframes",
    "05_Deliverables\WIP_Exports",
    "05_Deliverables\Final_Show_Cut",
    "05_Deliverables\Adaptations",
    "05_Deliverables\Backup_Versions",
    "05_Deliverables\Versions"
) do md "%RootDir%\%%D"

cd "%RootDir%"
