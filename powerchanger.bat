@echo off
REM SCRIPT CHANGES THE POWER PLAN TO OPPOSITE OF CURRENT PLAN
REM GAMING IS RECOMMENDED TO BE USED ON A CHARGER 
powercfg /getactivescheme >temp.txt
set /p plan=<temp.txt
if "%plan%"=="Power Scheme GUID: 381b4222-f694-41f0-9685-ff5bb260df2e  (Balanced)" powercfg -setactive e09b6800-ee54-4b2b-943d-146e318fdb56
if "%plan%"=="Power Scheme GUID: e09b6800-ee54-4b2b-943d-146e318fdb56  (Gaming)" powercfg -setactive scheme_balanced
del temp.txt
