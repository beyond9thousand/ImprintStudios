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
    "01_PreProduction\01_Scripts",
    "01_PreProduction\02_Storyboards",
    "01_PreProduction\03_Concept_Art",
    "01_PreProduction\04_Briefing",
    "02_Assets\01_Models\01_Characters",
    "02_Assets\01_Models\02_Environments",
    "02_Assets\01_Models\03_Props",
    "02_Assets\02_Textures\01_Character_Textures",
    "02_Assets\02_Textures\02_Environment_Textures",
    "02_Assets\02_Textures\03_Prop_Textures",
    "02_Assets\02_Textures\04_Materials",
    "02_Assets\03_References",
    "03_Animation\01_Storyboards",
    "03_Animation\02_Animatics",
    "03_Animation\03_Keyframes",
    "03_Animation\04_Scene_Files",
    "04_Renders\01_Preview_Renders",
    "04_Renders\02_Final_Renders",
    "04_Renders\03_Caches",
    "04_Renders\04_Image_Sequences",
    "05_Exports\01_WIP_Exports",
    "05_Exports\02_Final_Exports",
    "05_Exports\03_Delivery",	
    "06_Backups\01_Project_Backups",
    "06_Backups\02_Render_Backups",
) do md "%RootDir%\%%D"

:: Optionally change to the project root directory
cd "%RootDir%"

:: End of script
