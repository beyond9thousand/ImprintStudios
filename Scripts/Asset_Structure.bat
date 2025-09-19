@echo off
setlocal enabledelayedexpansion

:start
call :draw_banner

:: Define valid category folders
set "ValidCategories=EventAV ProductFilm Printables DOOH CGI"

:: Check if any category folder exists in the current directory
set "CategoryExists=false"
for %%C in (%ValidCategories%) do (
    if exist ".\%%C" (
        set "CategoryExists=true"
    )
)

:: Display category selection menu
echo.
echo Category Selection Menu:
echo -----------------------
echo 1. Event AV
echo 2. Product Film
echo 3. Printables
echo 4. Digital OOH
echo 5. CGI Video
echo 0. Exit
echo -----------------------
set /p Category="Enter the number (0-5): "

:: Handle exit option
if "%Category%"=="0" (
    echo.
    echo Exiting Imprint Studios Asset Creation Script...
    echo.
    pause
    exit /b
)

:: Validate category input
if "%Category%"=="1" set "CategoryName=EventAV" & set "ProjectPrompt=Enter Event AV Project Name: "
if "%Category%"=="2" set "CategoryName=ProductFilm" & set "ProjectPrompt=Enter Product Film Project Name: "
if "%Category%"=="3" set "CategoryName=Printables" & set "ProjectPrompt=Enter Printables Project Name: "
if "%Category%"=="4" set "CategoryName=DOOH" & set "ProjectPrompt=Enter Digital OOH Project Name: "
if "%Category%"=="5" set "CategoryName=CGI" & set "ProjectPrompt=Enter CGI Project Name: "

:: Check if a valid category was selected
if not defined CategoryName (
    echo.
    echo Invalid category selection. Please choose a number between 0 and 5.
    echo.
    pause
    goto start
)

:: Check if any category folder exists, if none, inform user
if "!CategoryExists!"=="false" (
    echo.
    echo No category folders found in the current directory.
    echo You must be in a parent directory containing at least one of: %ValidCategories%.
    echo Alternatively, you can create a category folder below.
    echo.
)

:: Define the category directory
set "CategoryDir=.\%CategoryName%"

:: Check if category folder exists, if not, require creation
if not exist "!CategoryDir!" (
    :ask_create
    echo.
    echo Category folder '%CategoryName%' does not exist.
    set /p CreateCat="Create it? (Y/N): "
    if /i "!CreateCat!"=="Y" (
        md "!CategoryDir!"
        echo.
        echo Category folder '%CategoryName%' created successfully.
    ) else if /i "!CreateCat!"=="N" (
        if "!CategoryExists!"=="false" (
            echo.
            echo No category folders found in the current directory.
            echo You must either create the category folder or be in a directory containing one of: %ValidCategories%.
            echo.
            pause
            goto start
        ) else (
            echo.
            echo You must create the '%CategoryName%' folder to proceed with this category.
            echo.
            pause
            goto start
        )
    ) else (
        echo.
        echo Invalid choice. Please enter Y or N.
        echo.
        goto ask_create
    )
)

call :draw_banner

:: Prompt for the project name
:prompt_project_name
echo.
set /p Project="%ProjectPrompt%"

:: Check for blank, empty, or whitespace-only project names
set "temp_project=!Project: =!"
if "!temp_project!"=="" (
    echo.
    echo The project name cannot be empty or contain only spaces. Please try again.
    echo.
    pause
    goto prompt_project_name
)

:: Check if the project name contains at least 3 alphabets
set "stripped_name=!Project!"
set "stripped_name=!stripped_name:a=!"
set "stripped_name=!stripped_name:b=!"
set "stripped_name=!stripped_name:c=!"
set "stripped_name=!stripped_name:d=!"
set "stripped_name=!stripped_name:e=!"
set "stripped_name=!stripped_name:f=!"
set "stripped_name=!stripped_name:g=!"
set "stripped_name=!stripped_name:h=!"
set "stripped_name=!stripped_name:i=!"
set "stripped_name=!stripped_name:j=!"
set "stripped_name=!stripped_name:k=!"
set "stripped_name=!stripped_name:l=!"
set "stripped_name=!stripped_name:m=!"
set "stripped_name=!stripped_name:n=!"
set "stripped_name=!stripped_name:o=!"
set "stripped_name=!stripped_name:p=!"
set "stripped_name=!stripped_name:q=!"
set "stripped_name=!stripped_name:r=!"
set "stripped_name=!stripped_name:s=!"
set "stripped_name=!stripped_name:t=!"
set "stripped_name=!stripped_name:u=!"
set "stripped_name=!stripped_name:v=!"
set "stripped_name=!stripped_name:w=!"
set "stripped_name=!stripped_name:x=!"
set "stripped_name=!stripped_name:y=!"
set "stripped_name=!stripped_name:z=!"
set "stripped_name=!stripped_name:A=!"
set "stripped_name=!stripped_name:B=!"
set "stripped_name=!stripped_name:C=!"
set "stripped_name=!stripped_name:D=!"
set "stripped_name=!stripped_name:E=!"
set "stripped_name=!stripped_name:F=!"
set "stripped_name=!stripped_name:G=!"
set "stripped_name=!stripped_name:H=!"
set "stripped_name=!stripped_name:I=!"
set "stripped_name=!stripped_name:J=!"
set "stripped_name=!stripped_name:K=!"
set "stripped_name=!stripped_name:L=!"
set "stripped_name=!stripped_name:M=!"
set "stripped_name=!stripped_name:N=!"
set "stripped_name=!stripped_name:O=!"
set "stripped_name=!stripped_name:P=!"
set "stripped_name=!stripped_name:Q=!"
set "stripped_name=!stripped_name:R=!"
set "stripped_name=!stripped_name:S=!"
set "stripped_name=!stripped_name:T=!"
set "stripped_name=!stripped_name:U=!"
set "stripped_name=!stripped_name:V=!"
set "stripped_name=!stripped_name:W=!"
set "stripped_name=!stripped_name:X=!"
set "stripped_name=!stripped_name:Y=!"
set "stripped_name=!stripped_name:Z=!"

set /a "original_length=0"
set "temp_orig=!Project!"
:get_orig_len
if not "!temp_orig!"=="" (
    set /a original_length+=1
    set "temp_orig=!temp_orig:~1!"
    goto get_orig_len
)

set /a "stripped_length=0"
set "temp_stripped=!stripped_name!"
:get_stripped_len
if not "!temp_stripped!"=="" (
    set /a stripped_length+=1
    set "temp_stripped=!temp_stripped:~1!"
    goto get_stripped_len
)

set /a "alpha_count=%original_length%-%stripped_length%"
if !alpha_count! LSS 3 (
    call :draw_banner
    echo.
    echo The project name must contain at least 3 letters. Please try again.
    echo.
    pause
    goto prompt_project_name
)

:: Retrieve and format the current date as DDMMYY
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"

:: Define the root directory path for the project
set "RootDir=!CategoryDir!\%FormattedDate%_%Project%+%CategoryName%"
md "%RootDir%"

:: Create subdirectories based on the selected category
if "%Category%"=="1" (
    echo.
    echo Creating Event AV project structure...
    for %%D in (
        "01_Brief"
        "01_Brief\01_Creative_Brief"
        "01_Brief\02_Scripts"
        "01_Brief\03_References"
        "02_Client_Inputs"
        "02_Client_Inputs\01_Logos"
        "02_Client_Inputs\02_Brand_Guidelines"
        "02_Client_Inputs\03_Product_Assets"
        "02_Client_Inputs\04_Stage_&_Screen_Specs"
        "02_Client_Inputs\05_Music_Tracks"
        "02_Client_Inputs\06_VO_&_Audio"
        "03_Client_Feedback"
        "03_Client_Feedback\01_R1_Feedback"
        "03_Client_Feedback\02_R2_Feedback"
        "03_Client_Feedback\03_Final_Approval"
        "04_Preproduction"
        "04_Preproduction\01_Storyboards"
        "04_Preproduction\02_Moodboards"
        "04_Preproduction\03_Animatics"
        "04_Preproduction\04_Keyframes"
        "04_Preproduction\05_Styleframes"
        "05_Deliverables"
        "05_Deliverables\01_WIP_Exports"
        "05_Deliverables\02_Final_Show_Cut"
        "05_Deliverables\03_Adaptations"
        "05_Deliverables\04_Backup_Versions"
        "05_Deliverables\05_Versions"
    ) do (
        md "%RootDir%\%%D"
    )
)

if "%Category%"=="2" (
    echo.
    echo Creating Product Film project structure...
    for %%D in (
        "01_Brief"
        "02_Client_Inputs"
        "02_Client_Inputs\01_Logos"
        "02_Client_Inputs\02_Brand_Guidelines"
        "02_Client_Inputs\03_Raw_Footage"
        "02_Client_Inputs\04_Product_Assets"
        "02_Client_Inputs\05_VO_&_Audio"
        "03_Client_Feedback"
        "03_Client_Feedback\01_R1_Feedback"
        "03_Client_Feedback\02_R2_Feedback"
        "03_Client_Feedback\03_Final_Approval"
        "04_Preproduction"
        "04_Preproduction\01_Storyboards"
        "04_Preproduction\02_Shotlist"
        "04_Preproduction\03_Animatics"
        "04_Preproduction\04_Keyframes"
        "04_Preproduction\05_Script_Versions"
        "04_Preproduction\06_Styleframes"
        "05_Deliverables"
        "05_Deliverables\01_WIP_Cuts"
        "05_Deliverables\02_Final_Cuts"
        "05_Deliverables\03_Stems"
        "05_Deliverables\04_Versions"
        "05_Deliverables\05_Subtitled_Versions"
    ) do (
        md "%RootDir%\%%D"
    )
)

if "%Category%"=="3" (
    echo.
    echo Creating Printables project structure...
    for %%D in (
        "01_Brief"
        "02_Client_Inputs"
        "02_Client_Inputs\01_Logos"
        "02_Client_Inputs\02_Brand_Guidelines"
        "02_Client_Inputs\03_Product_Assets"
        "02_Client_Inputs\04_Fonts"
        "03_Client_Feedback"
        "03_Client_Feedback\01_R1_Feedback"
        "03_Client_Feedback\02_R2_Feedback"
        "03_Client_Feedback\03_Final_Approval"
        "04_Preproduction"
        "04_Preproduction\01_Layouts"
        "04_Preproduction\02_Draft_Designs"
        "04_Preproduction\03_Keyframes"
        "04_Preproduction\04_Mockups"
        "05_Deliverables"
        "05_Deliverables\01_WIP_Files"
        "05_Deliverables\02_Final_Approved"
        "05_Deliverables\03_Adaptations"
        "05_Deliverables\04_Print_Ready_Files"
    ) do (
        md "%RootDir%\%%D"
    )
)

if "%Category%"=="4" (
    echo.
    echo Creating Digital OOH project structure...
    for %%D in (
        "01_Brief"
        "02_Client_Inputs"
        "02_Client_Inputs\01_Logos"
        "02_Client_Inputs\02_Brand_Guidelines"
        "02_Client_Inputs\03_Product_Assets"
        "02_Client_Inputs\04_Screen_Specs"
        "03_Client_Feedback"
        "03_Client_Feedback\01_R1_Feedback"
        "03_Client_Feedback\02_R2_Feedback"
        "03_Client_Feedback\03_Final_Approval"
        "04_Preproduction"
        "04_Preproduction\01_Storyboards"
        "04_Preproduction\02_Layouts"
        "04_Preproduction\03_Keyframes"
        "04_Preproduction\04_Animatics"
        "04_Preproduction\05_Motion_Tests"
        "05_Deliverables"
        "05_Deliverables\01_WIP_Exports"
        "05_Deliverables\02_Final_Approved"
        "05_Deliverables\03_Adaptations"
        "05_Deliverables\04_Versions"
    ) do (
        md "%RootDir%\%%D"
    )
)

if "%Category%"=="5" (
    echo.
    echo Creating CGI Video project structure...
    for %%D in (
        "01_Brief"
        "02_Client_Inputs"
        "02_Client_Inputs\01_Logos"
        "02_Client_Inputs\02_Client_3D_Models"
        "02_Client_Inputs\03_Brand_Guidelines"
        "03_Client_Feedback"
        "03_Client_Feedback\01_R1_Feedback"
        "03_Client_Feedback\02_R2_Feedback"
        "03_Client_Feedback\03_Final_Approval"
        "04_Preproduction"
        "04_Preproduction\01_Concept_Art"
        "04_Preproduction\02_Storyboards"
        "04_Preproduction\03_Keyframes"
        "04_Preproduction\04_Greyshade_Renders"
        "04_Preproduction\05_LookDev"
        "05_Deliverables"
        "05_Deliverables\01_WIP_Renders"
        "05_Deliverables\02_Final_Renders"
        "05_Deliverables\03_Comps"
        "05_Deliverables\04_Versions"
    ) do (
        md "%RootDir%\%%D"
    )
)

:: Final confirmation
echo.
echo Project folder created successfully at %RootDir%.
echo.
pause
exit /b

:draw_banner
cls
:: Display Imprint Studios ASCII art
:::
:::_________________________________________________________________________
:::
:::  ___ __  __ ___ ___ ___ _  _ _____   ___ _____ _   _ ___ ___ ___  ___ 
::: |_ _|  \/  | _ \ _ \_ _| \| |_   _| / __|_   _| | | |   \_ _/ _ \/ __|
:::  | || |\/| |  _/   /| || .` | | |   \__ \ | | | |_| | |) | | (_) \__ \
::: |___|_|  |_|_| |_|_\___|_|\_| |_|   |___/ |_|  \___/|___/___\___/|___/
:::                                                                       
:::_________________________________________________________________________
:::

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
goto :eof
