@echo off
set /p Project="Enter Project Name: "

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"
set "PDate=%dt:~6,2%%dt:~4,2%%dt:~2,2%"

md ".\%PDate%_%Project%\"
cd ".\%PDate%_%Project%\"

for %%D in (
   "01_ProjectFiles"
   "02_References"
   "03_Media\01_RawFootage"
   "03_Media\02_Proxies"
   "03_Media\03_Audio\01_Music"
   "03_Media\03_Audio\02_VoiceOvers"
   "03_Media\03_Audio\03_SFX"
   "03_Media\04_Images"
   "04_Assets\01_Graphics"
   "04_Assets\02_Titles"
   "04_Assets\03_VFX"
   "05_Sequences"
   "06_Exports\01_WorkInProgress"
   "06_Exports\02_Final"
   "07_Backups"
   "08_Delivery"
) do md "%%D"
