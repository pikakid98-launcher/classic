@ECHO OFF

if exist "User\Util\gm8x_fix.txt" (
GOTO SilentCMD
) else (
del "Util\gm8x_fix.exe" /S /Q
)

::----------------------------------------------------------

:SilentCMD

if exist "User\Util\SilentCMD.txt" (
ECHO close >> "User\close.txt"
exit
) else (
del "Util\SilentCMD.exe" /S /Q
del "Util\SilentCMD.exe.config" /S /Q
)