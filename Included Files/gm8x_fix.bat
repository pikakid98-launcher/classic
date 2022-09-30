@ECHO OFF

if exist "User\Util\gm8x_fix.txt" (
mkdir "User\Util"
del "User\Util\gm8x_fix.txt" /S /Q
) else (
mkdir "User\Util"
ECHO Install gm8x_fix >> "User\Util\gm8x_fix.txt"
)