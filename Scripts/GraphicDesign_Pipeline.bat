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
    "01_PreProduction\01_Briefings",
    "01_PreProduction\02_Moodboards",
    "01_PreProduction\03_Sketches",
    "02_Assets\01_Source_Files\01_Raster_Graphics",
    "02_Assets\01_Source_Files\02_Vector_Graphics",
    "02_Assets\01_Source_Files\03_Page_Layouts",
    "02_Assets\01_Source_Files\04_Other_Design_Files",
    "02_Assets\02_References",
    "02_Assets\03_Fonts",
    "02_Assets\04_Stock_Images",
    "02_Assets\05_Vectors",
    "03_Design\01_Drafts",
    "03_Design\02_Review_Files",
    "03_Design\03_Final_Designs",
    "04_Delivery\01_Client_Preview",
    "04_Delivery\02_Final_Files",
    "04_Delivery\03_Print_Ready",
    "05_Backups\01_Project_Backups",
    "05_Backups\02_Design_Backups",
) do md "%RootDir%\%%D"

:: Optionally change to the project root directory
cd "%RootDir%"

:: End of script
