@echo off
if not exist bin mkdir bin
cd bin
del %~n1.xex
copy /y %1

REM Compile (TODO - CHANGE PATH TO COMPILER)
C:\Projects\FastBasic\build\compiler\fastbasic.exe %~nx1

REM Check if compile was successful
if not exist %~n1.xex goto skip

REM Run on emulator (TODO - CHANGE PATH TO EMULATOR)
C:\atari\Altirra\Altirra64.exe /singleinstance /run c:%~p1\bin\%~n1.xex

:skip