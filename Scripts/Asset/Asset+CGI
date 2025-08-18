@echo off
setlocal enabledelayedexpansion

set /p Project="Enter CGI Project Name: "

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

set "RootDir=.\%FormattedDate%_%Project%_CGI"
md "%RootDir%"

for %%D in (
    "01_Brief",
    "02_Client_Inputs\Logos",
    "02_Client_Inputs\Client_3D_Models",
    "02_Client_Inputs\Brand_Guidelines",
    "03_Client_Feedback\R1_Feedback",
    "03_Client_Feedback\R2_Feedback",
    "03_Client_Feedback\Final_Approval",
    "04_Preproduction\Concept_Art",
    "04_Preproduction\Storyboards",
    "04_Preproduction\Keyframes",
    "04_Preproduction\Greyshade_Renders",
    "04_Preproduction\LookDev",
    "05_Deliverables\WIP_Renders",
    "05_Deliverables\Final_Renders",
    "05_Deliverables\Comps",
    "05_Deliverables\Versions"
) do md "%RootDir%\%%D"

cd "%RootDir%"
