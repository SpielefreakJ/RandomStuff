@echo off

echo Downloading Forge for 1.8.9, please wait!

cd %appdata%\.minecraft\versions
mkdir 1.8.9-forge1.8.9-11.15.1.2318-1.8.9
cd 1.8.9-forge1.8.9-11.15.1.2318-1.8.9

powershell -Command "Invoke-WebRequest 'https://cdn.spielefreakj.com/labystuff/forge/1.8.9-forge1.8.9-11.15.1.2318-1.8.9.json' -O '1.8.9-forge1.8.9-11.15.1.2318-1.8.9.json'"

cd %appdata%\.minecraft\libraries\net

SET forgefolder=false
IF EXIST minecraftforge SET forgefolder=true
IF "%forgefolder%"=="true" (
    cd minecraftforge\forge
) ELSE (
    mkdir minecraftforge
    cd minecraftforge
    mkdir forge
    cd forge
)
mkdir 1.8.9-11.15.1.2318-1.8.9
cd 1.8.9-11.15.1.2318-1.8.9

powershell -Command "Invoke-WebRequest 'https://cdn.spielefreakj.com/labystuff/forge/forge-1.8.9-11.15.1.2318-1.8.9.jar' -O 'forge-1.8.9-11.15.1.2318-1.8.9.jar'"

echo Forge 1.8.9 has been successfully installed. Please open the launcher, create a new Installation and select the version 1.8.9-forge1.8.9-11.15.1.2318-1.8.9 (at the bottom of the list).
pause