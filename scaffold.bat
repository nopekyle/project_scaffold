@echo off
echo Scaffold a Golang/Vite Project!
set /p dirName=Enter project name: 
mkdir "%dirName%"
cd %dirName%
echo Project folder created - proceed with client/api folder creation
call npm create vite@latest
PAUSE
echo Client scaffold successfully created.
set /p apiName=Enter API folder name:
mkdir "%apiName%"
cd %apiName%
mkdir "cmd"
cd "cmd"
call > main.go
echo main.go file created in %apiName%/cmd
cd..
go mod init %apiName%
PAUSE
echo %apiName% successfully created. Opening %dirName% in editor now.
cd..
code .
