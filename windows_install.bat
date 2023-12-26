@echo off

set /p answer="Do you have some kind of config install already on your system? If yes, insert 1; if no, insert 0: "

if "%answer%"=="1" (
    rmdir /s /q "$HOME\AppData\Local\nvim"
    rmdir /s /q "$HOME\AppData\Local\nvim-data"
    mkdir "$HOME\AppData\Local\nvim"
    xcopy /E /I "%cd%\lua" "$HOME\AppData\Local\nvim\lua"
    copy "%cd%\init.lua" "$HOME\AppData\local\nvim\init.lua"
    xcopy /E /I "%cd%\after" "$HOME\AppData\local\nvim\after"
    nvim
) else if "%answer%"=="0" (
    rmdir /s /q "$HOME\AppData\Local\nvim"
    mkdir "$HOME\AppData\Local\nvim"
    xcopy /E /I "%cd%\lua" "$HOME\AppData\Local\nvim\lua"
    copy "%cd%\init.lua" "$HOME\AppData\local\nvim\init.lua"
    xcopy /E /I "%cd%\after" "$HOME\AppData\local\nvim\after"
    nvim
) else (
    echo Invalid input. Please enter 0 or 1.
)

