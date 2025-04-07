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
    "01_PreProduction",
    "02_References",
    "03_Storyboards\01_Thumbnails",
    "03_Storyboards\02_Clean_Storyboards",
    "04_ConceptArt\01_Characters",
    "04_ConceptArt\02_Environments",
    "04_ConceptArt\03_Props",
    "05_Styleframes",
    "06_Deliverables",
    "07_Feedback\01_Internal",
    "07_Feedback\02_Client",
    "08_Backups"
) do md "%RootDir%\%%D"

cd "%RootDir%"
:: End of script
