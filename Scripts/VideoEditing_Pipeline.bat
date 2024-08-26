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

:: Define and create subdirectories with numbering
for %%D in (
    "01_Assets\01_Briefing",
    "01_Assets\02_Graphics",
    "01_Assets\03_Fonts",
    "01_Assets\04_StockFootage",
    "01_Assets\05_Textures",
    "01_Assets\06_3D_Models",
    "01_Assets\07_Audio\01_Music",
    "01_Assets\07_Audio\02_VoiceOver",
    "01_Assets\07_Audio\03_SFX",
    "02_Animation\01_Storyboard",
    "02_Animation\02_Keyframes",
    "02_Animation\03_Scenes",
    "03_Render\01_Preview",
    "03_Render\02_Final",
    "03_Render\03_ImageSequence",
    "04_Export\01_Delivery",
    "05_Backups"
) do md "%RootDir%\%%D"

:: Optionally change to the project root directory
cd "%RootDir%"

:: End of script
