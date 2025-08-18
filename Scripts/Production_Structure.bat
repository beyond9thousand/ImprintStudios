@echo off
setlocal enabledelayedexpansion

:start
call :draw_banner

:: Define valid category folders
set "ValidCategories=GraphicDesign ConceptArt 3DAnimation VideoEditing"

:: Display production type menu
echo.
echo Production Project Creation Tool
echo ---------------------------------
echo Select a production type:
echo 1. Graphic Design
echo 2. Concept Art
echo 3. 3D Animation
echo 4. Video Editing
echo 0. Exit
echo ---------------------------------
set /p "choice=Enter your choice (0-4): "

:: Handle exit option
if "%choice%"=="0" (
    echo.
    echo Exiting Production Project Creation Tool...
    echo.
    pause
    exit /b
)

:: Validate choice and set project variables
if "%choice%"=="1" (
    set "CategoryName=GraphicDesign"
    set "ProjectPrompt=Enter Graphic Design Project Name: "
    set "Subdirs="01_PreProduction\01_Briefings" "01_PreProduction\02_Moodboards" "01_PreProduction\03_Sketches" "02_Assets\01_Source_Files\01_Raster_Graphics" "02_Assets\01_Source_Files\02_Vector_Graphics" "02_Assets\01_Source_Files\03_Page_Layouts" "02_Assets\01_Source_Files\04_Other_Design_Files" "02_Assets\02_References" "02_Assets\03_Fonts" "02_Assets\04_Stock_Images" "02_Assets\05_Vectors" "03_Design\01_Drafts" "03_Design\02_Review_Files" "03_Design\03_Final_Designs" "04_Delivery\01_Client_Preview" "04_Delivery\02_Final_Files" "04_Delivery\03_Print_Ready" "05_Backups\01_Project_Backups" "05_Backups\02_Design_Backups""
) else if "%choice%"=="2" (
    set "CategoryName=ConceptArt"
    set "ProjectPrompt=Enter Concept Art Project Name: "
    set "Subdirs="01_PreProduction\01_Briefings" "01_PreProduction\02_Moodboards" "02_References\01_Photo" "02_References\02_3D" "02_References\03_Style" "03_Visual_Development\01_Sketches" "03_Visual_Development\02_Storyboards" "03_Visual_Development\03_Concept_Art" "03_Visual_Development\04_Styleframes" "04_Deliverables" "05_Feedback\01_Internal" "05_Feedback\02_Client" "06_Backups""
) else if "%choice%"=="3" (
    set "CategoryName=3DAnimation"
    set "ProjectPrompt=Enter 3D Animation Project Name: "
    set "Subdirs="01_PreProduction\01_Briefings" "01_PreProduction\02_Scripts" "01_PreProduction\03_Concept_Art" "02_Assets\01_Models\01_Characters" "02_Assets\01_Models\02_Environments" "02_Assets\01_Models\03_Props" "02_Assets\02_Textures\01_Character_Textures" "02_Assets\02_Textures\02_Environment_Textures" "02_Assets\02_Textures\03_Prop_Textures" "02_Assets\02_Textures\04_Materials" "02_Assets\03_References" "03_Animation\01_Storyboards" "03_Animation\02_Animatics" "03_Animation\03_Keyframes" "03_Animation\04_Scene_Files" "04_Renders\01_Preview_Renders" "04_Renders\02_Final_Renders" "04_Renders\03_Caches" "04_Renders\04_Image_Sequences" "05_Exports\01_WIP_Exports" "05_Exports\02_Final_Exports" "05_Exports\03_Delivery" "06_Backups\01_Project_Backups" "06_Backups\02_Render_Backups""
) else if "%choice%"=="4" (
    set "CategoryName=VideoEditing"
    set "ProjectPrompt=Enter Video Editing Project Name: "
    set "Subdirs="01_Assets\01_Briefing" "01_Assets\02_Graphics" "01_Assets\03_Fonts" "01_Assets\04_StockFootage" "01_Assets\05_Textures" "01_Assets\06_3D_Models" "01_Assets\07_Audio\01_Music" "01_Assets\07_Audio\02_VoiceOver" "01_Assets\07_Audio\03_SFX" "02_Animation\01_Storyboard" "02_Animation\02_Keyframes" "02_Animation\03_Scenes" "03_Render\01_Preview" "03_Render\02_Final" "03_Render\03_ImageSequence" "04_Export\01_Delivery" "05_Backups""
) else (
    echo.
    echo Invalid choice. Please enter a number between 0 and 4.
    pause
    goto start
)

:: Check if any category folder exists
set "CategoryExists=false"
for %%C in (%ValidCategories%) do (
    if exist ".\%%C" (
        set "CategoryExists=true"
    )
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
set /p "Project=%ProjectPrompt%"

:: Retrieve and format the current date
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "FormattedDate=%dt:~2,2%%dt:~4,2%%dt:~6,2%"
if "%choice%"=="2" (
    set "FormattedDate=%dt:~0,4%%dt:~4,2%%dt:~6,2%"
)

:: Create the root directory
set "RootDir=!CategoryDir!\%FormattedDate%_%Project%"
md "%RootDir%"

:: Create subdirectories
for %%D in (%Subdirs%) do md "%RootDir%\%%~D"

:: Change to the project root directory
cd "%RootDir%"

echo.
echo Project folder structure created successfully at "%cd%".
echo.
pause
goto :eof

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