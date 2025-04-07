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
    "01_Briefings",
    "02_References",
    "03_Scripts",
    "04_Storyboards\01_Thumbnails",
    "04_Storyboards\02_Clean_Storyboards",
    "05_ConceptArt\01_Characters",
    "05_ConceptArt\02_Environments",
    "05_ConceptArt\03_Props",
    "06_Styleframes",
    "07_Shot_List",
    "08_Feedback\01_Internal",
    "08_Feedback\02_Client",
    "09_Exports\01_Presentation_Boards",
    "09_Exports\02_Deliverables",
    "10_Backups"
) do md "%RootDir%\%%D"

:: Optionally change to the project root directory
cd "%RootDir%"

:: End of script
