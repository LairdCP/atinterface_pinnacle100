@echo off
set fldr=Deploy
if exist %fldr% del /F /S /Q  %fldr%\*.* >NUL
if not exist %fldr% md %fldr%

set pltfm=pinnacle100
if not exist %fldr%\%pltfm% md %fldr%\%pltfm%
copy $autorun$.AT.interface.%pltfm%.sb  %fldr%\%pltfm% >NUL
copy $autorun$.AT.interface.%pltfm%.*.sb  %fldr%\%pltfm% >NUL
copy $LIB$.defines.%pltfm%.sb  %fldr%\%pltfm% >NUL
copy $LIB$.AT.interface.sb  %fldr%\%pltfm% >NUL
copy $LIB$.debug.code.sb  %fldr%\%pltfm% >NUL
copy $LIB$.defines.Common.sb  %fldr%\%pltfm% >NUL
copy $LIB$.SRegInterface.sb  %fldr%\%pltfm% >NUL
copy $$README$$.txt  %fldr%\%pltfm% >NUL


copy $LIB$.sreg.defaults.%pltfm%.sb %fldr%\%pltfm% >NUL
copy $LIB$.app.defines.sb %fldr%\%pltfm% >NUL
