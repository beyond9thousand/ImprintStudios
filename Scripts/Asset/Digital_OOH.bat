@echo off
setlocal enabledelayedexpansion

set /p Project="Enter Digital OOH Project Name: "

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

set "RootDir=.\%FormattedDate%_%Project%_DOOH"
md "%RootDir%"

for %%D in (
    "01_Brief",
    "02_Client_Inputs\Logos",
    "02_Client_Inputs\Brand_Guidelines",
    "02_Client_Inputs\Product_Assets",
    "02_Client_Inputs\Screen_Specs",
    "03_Client_Feedback\R1_Feedback",
    "03_Client_Feedback\R2_Feedback",
    "03_Client_Feedback\Final_Approval",
    "04_Preproduction\Storyboards",
    "04_Preproduction\Layouts",
    "04_Preproduction\Keyframes",
    "04_Preproduction\Animatics",
    "04_Preproduction\Motion_Tests",
    "05_Deliverables\WIP_Exports",
    "05_Deliverables\Final_Approved",
    "05_Deliverables\Adaptations",
    "05_Deliverables\Versions"
) do md "%RootDir%\%%D"

cd "%RootDir%"
