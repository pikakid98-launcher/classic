@ECHO OFF

if exist "User\Util\SilentCMD.txt" (
mkdir "User\Util"
del "User\Util\SilentCMD.txt" /S /Q
) else (
mkdir "User\Util"
ECHO Install SilentCMD >> "User\Util\SilentCMD.txt"
)

