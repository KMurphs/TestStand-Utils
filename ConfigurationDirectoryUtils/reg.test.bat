REM Query Existing Configuration
reg query "HKLM\SOFTWARE\WOW6432Node\National Instruments\TestStand\14.0" -v CfgLocation 

REM Restore To Default
reg add "HKLM\SOFTWARE\WOW6432Node\National Instruments\TestStand\14.0" /v CfgLocation /t REG_SZ /d "C:\ProgramData\National Instruments\TestStand 2014 (32-bit)\Cfg" /f


REM Change To different Location
reg add "HKLM\SOFTWARE\WOW6432Node\National Instruments\TestStand\14.0" /v CfgLocation /t REG_SZ /d "C:\Etion Projects\HTSTE2\StationGlobals edit - copy" /f
reg add "HKLM\SOFTWARE\WOW6432Node\National Instruments\TestStand\14.0" /v CfgLocation /t REG_SZ /d "C:\Etion Projects\HTSTE2\StationGlobals edit" /f