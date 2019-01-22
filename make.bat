@echo off
rem gcc -std=c99 -Wall .\src\hello_world.c -o .\bin\hello_world.exe
rem .\bin\hello_world.exe

rem gcc -std=c99 -Wall .\src\prompt.c -o .\bin\prompt.exe
rem .\bin\prompt.exe

gcc -std=c99 -Wall .\src\mpc.c .\src\parsing.c -o .\bin\parsing.exe
.\bin\parsing.exe