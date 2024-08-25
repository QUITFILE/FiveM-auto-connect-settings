@echo off
setlocal

set /p NameServer="Enter Name: "

:: Call PowerShell to open a file dialog and capture the selected file path
for /f "delims=" %%i in ('powershell -command "[System.Reflection.Assembly]::LoadWithPartialName('System.windows.forms') | Out-Null; $dialog = New-Object System.Windows.Forms.OpenFileDialog; $dialog.ShowDialog() | Out-Null; $dialog.FileName"') do set "SelectedFile=%%i"

:: Check if the path is not empty
if "%SelectedFile%"=="" (
    echo No file selected. Exiting...
    exit /b 1
)

echo Selected File Path: %SelectedFile%

:: Ask user to select PureMode
echo.
echo Select PureMode:
echo 1. No Pure
echo 2. Pure_1
echo 3. Pure_2
set /p PureModeChoice="Enter choice (1/2/3): "

:: Set PureMode based on user choice
if "%PureModeChoice%"=="1" (
    set PureMode=-pure_0
) else if "%PureModeChoice%"=="2" (
    set PureMode=-pure_1
) else if "%PureModeChoice%"=="3" (
    set PureMode=-pure_2
) else (
    echo Invalid choice. Exiting...
    exit /b 1
)

:: Ask user to select Game Build
echo.
echo Select Game Build:
echo 0. build_1604 (Arena War)
echo 1. build_2060 (Los Santos Summer Special)
echo 2. build_2189 (Cayo Perico Heist)
echo 3. build_2372 (Los Santos Tuners)
echo 4. build_2545 (The Contract)
echo 5. build_2699 (The Criminal Enterprises)
echo 6. build_2802 (Los Santos Drug Wars)
echo 7. build_2944 (San Andreas Mercenaries)
echo 8. build_3095 (The Chop Shop)
echo 9. Custom Build
set /p GameBuildChoice="Enter choice (1/2/3/4/5/6/7/8/9): "

:: Set GameBuild based on user choice
if "%GameBuildChoice%"=="0" (
    set GameBuild=-b1604
) else if "%GameBuildChoice%"=="1" (
       set GameBuild=-b2060
) else if "%GameBuildChoice%"=="2" (
    set GameBuild=-b2189
) else if "%GameBuildChoice%"=="3" (
    set GameBuild=-b2372
) else if "%GameBuildChoice%"=="4" (
    set GameBuild=-b2545
) else if "%GameBuildChoice%"=="5" (
    set GameBuild=-b2699
) else if "%GameBuildChoice%"=="6" (
    set GameBuild=-b2802
) else if "%GameBuildChoice%"=="7" (
    set GameBuild=-b2944
) else if "%GameBuildChoice%"=="8" (
    set GameBuild=-b3095
) else if "%GameBuildChoice%"=="9" (
    set /p CustomBuild="Enter custom build (e.g., 3095): "
    set GameBuild=-b%CustomBuild%
) else (
    echo Invalid choice. Exiting...
    exit /b 1
)

:: Input IP and Port
set /p IPPort="Enter IP:Port (e.g., 127.0.0.1:30120): "

:: Display the collected information
echo.
echo Selected File Path: %SelectedFile%
echo PureMode: %PureMode%
echo Game Build: %GameBuild%
echo IP:Port: %IPPort%

:: Save configuration to a file (optional)
(
    echo Selected File Path: %SelectedFile%
    echo PureMode: %PureMode%
    echo Game Build: %GameBuild%
    echo IP:Port: %IPPort%
) > config.txt

:: Set shortcut path and name
set "ShortcutPath=%USERPROFILE%\Desktop\%NameServer% Server.lnk"
powershell "$ws = New-Object -ComObject WScript.Shell; $shortcut = $ws.CreateShortcut('%ShortcutPath%'); $shortcut.TargetPath = '%SelectedFile%'; $shortcut.Arguments = '%PureMode% %GameBuild% +connect %IPPort%'; $shortcut.Save()"
echo Shortcut created on your Desktop as %NameServer% Server.lnk

endlocal
pause
