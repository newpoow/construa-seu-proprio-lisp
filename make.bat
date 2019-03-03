@echo off
rem gcc -std=c99 -Wall .\src\hello_world.c -o .\bin\hello_world.exe
rem .\bin\hello_world.exe

rem gcc -std=c99 -Wall .\src\prompt.c -o .\bin\prompt.exe
rem .\bin\prompt.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\parsing.c -o .\bin\parsing.exe
rem .\bin\parsing.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\evaluation.c -o .\bin\evaluation.exe
rem .\bin\evaluation.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\error_handling.c -o .\bin\error_handling.exe
rem .\bin\error_handling.exe

gcc -std=c99 -Wall .\src\mpc.c .\src\s_expressions.c -o .\bin\s_expressions.exe
.\bin\s_expressions.exe