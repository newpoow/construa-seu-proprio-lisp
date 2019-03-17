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

rem gcc -std=c99 -Wall .\src\mpc.c .\src\s_expressions.c -o .\bin\s_expressions.exe
rem .\bin\s_expressions.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\q_expressions.c -o .\bin\q_expressions.exe
rem .\bin\q_expressions.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\variables.c -o .\bin\variables.exe
rem .\bin\variables.exe

rem gcc -std=c99 -Wall .\src\mpc.c .\src\functions.c -o .\bin\functions.exe
rem .\bin\functions.exe

gcc -std=c99 -Wall .\src\mpc.c .\src\conditionals.c -o .\bin\conditionals.exe
.\bin\conditionals.exe