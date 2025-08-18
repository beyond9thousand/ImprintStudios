@echo off
setlocal enabledelayedexpansion

set /p Project="Enter Product Film Project Name: "

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

set "RootDir=.\%FormattedDate%_%Project%_ProductFilm"
md "%RootDir%"

for %%D in (
    "01_Brief",
    "02_Client_Inputs\Logos",
    "02_Client_Inputs\Brand_Guidelines",
    "02_Client_Inputs\Raw_Footage",
    "02_Client_Inputs\Product_Assets",
    "02_Client_Inputs\VO_&_Audio",
    "03_Client_Feedback\R1_Feedback",
    "03_Client_Feedback\R2_Feedback",
    "03_Client_Feedback\Final_Approval",
    "04_Preproduction\Storyboards",
    "04_Preproduction\Shotlist",
    "04_Preproduction\Animatics",
    "04_Preproduction\Keyframes",
    "04_Preproduction\Script_Versions",
    "04_Preproduction\Styleframes",
    "05_Deliverables\WIP_Cuts",
    "05_Deliverables\Final_Cuts",
    "05_Deliverables\Stems",
    "05_Deliverables\Versions",
    "05_Deliverables\Subtitled_Versions"
) do md "%RootDir%\%%D"

cd "%RootDir%"
