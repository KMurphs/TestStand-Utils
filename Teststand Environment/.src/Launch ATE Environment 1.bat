@ECHO OFF



REM **************************************************************************************************
REM *
REM *	First find the ".exe" aplication, looking for it at usual locations
REM *	Store Location in %TESTSTAND_DIRECTORY%
REM *
REM **************************************************************************************************
IF EXIST "C:\Program Files (x86)\National Instruments\TestStand 2020\Bin" (
    SET TESTSTAND_DIRECTORY="C:\Program Files (x86)\National Instruments\TestStand 2020\Bin"
    GOTO START
)

REM IF EXIST "C:\Program Files\Atollic\TrueSTUDIO for STM32 9.3.0\Servers\J-Link_gdbserver\ST-Link_CLI.exe" (
REM     set STLINK_CLI_PATH="C:\Program Files\Atollic\TrueSTUDIO for STM32 9.3.0\Servers\J-Link_gdbserver\ST-Link_CLI.exe"
REM     GOTO PROG
REM )

ECHO Could not Find Application. Update Paths in this batch file to include current location.
EXIT /B 1





REM **************************************************************************************************
REM *
REM *	Start Application
REM *
REM **************************************************************************************************
:START

REM This batch file will launch teststand using the environments file specified
SET ENVIRONMENT_DIRECTORY=%~dp0
SET TS_WORKSPACE=CheetahNavTester.tsw

REM Start TestStand in specified environment
START "Teststand" /d %TESTSTAND_DIRECTORY% SeqEdit.exe "%ENVIRONMENT_DIRECTORY%%TS_WORKSPACE%" /ENV "%ENVIRONMENT_DIRECTORY%Environment.tsenv"
