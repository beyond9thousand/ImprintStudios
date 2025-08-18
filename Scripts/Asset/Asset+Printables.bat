@echo off
setlocal enabledelayedexpansion

set /p Project="Enter Printables Project Name: "

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

set "RootDir=.\%FormattedDate%_%Project%_Printables"
md "%RootDir%"

for %%D in (
    "01_Brief",
    "02_Client_Inputs\Logos",
    "02_Client_Inputs\Brand_Guidelines",
    "02_Client_Inputs\Product_Assets",
    "02_Client_Inputs\Fonts",
    "03_Client_Feedback\R1_Feedback",
    "03_Client_Feedback\R2_Feedback",
    "03_Client_Feedback\Final_Approval",
    "04_Preproduction\Layouts",
    "04_Preproduction\Draft_Designs",
    "04_Preproduction\Keyframes",
    "04_Preproduction\Mockups",
    "05_Deliverables\WIP_Files",
    "05_Deliverables\Final_Approved",
    "05_Deliverables\Adaptations",
    "05_Deliverables\Print_Ready_Files"
) do md "%RootDir%\%%D"

cd "%RootDir%"
