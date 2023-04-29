@echo off
setlocal EnableDelayedExpansion

if not exist "urls.txt" (
    echo Error: file urls.txt not found!
    exit /b 1
)

set i=0

set i=0
for /f "usebackq delims=" %%a in ("urls.txt") do (
    set line=%%a
    set "line=!line:~0,1!"
    if "!line!" neq "#" (
        set /a i+=1
        set "url[!i!]=%%a"
    )
)

for /l %%i in (1,1,%i%) do (
    set url=!url[%%i]!
    start "" "!url!"
)
