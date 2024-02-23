@echo off
setlocal EnableDelayedExpansion

set "file=Sites.txt"

if not exist "%file%" (
    echo File "%file%" not found.
    exit /b
)

set "url_list="
for /f "delims=" %%a in (%file%) do (
    set "url_list=!url_list! "%%a""
)

"C:\Program Files\Google\Chrome\Application\chrome.exe" --new-window %url_list%

endlocal