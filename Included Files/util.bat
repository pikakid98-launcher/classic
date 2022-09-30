@ECHO OFF

mkdir "Util"
mkdir "%tmp%\PL-Temp\Util"

CLS

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO URL = "https://www.7-zip.org/a/7zr.exe" >> %tmp%\PL-Temp\7z.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\7z.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO SaveBinaryData "Util\7zr.exe",objWinHttp.responseBody >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\7z.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\7z.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\7z.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\7z.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\7z.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\7z.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\7z.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\7z.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\7z.vbs
ECHO. >> %tmp%\PL-Temp\7z.vbs
ECHO End Function >> %tmp%\PL-Temp\7z.vbs

ECHO Downloading 7-Zip
START /wait "" "%tmp%\PL-Temp\7z.vbs"

::----------------------------------------------------------
if exist "User\Util\gm8x_fix.txt" (
GOTO gm8x_fix
) else (
ECHO Skipping gm8x_fix
GOTO SilentCMD
)

:gm8x_fix

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO URL = "https://github.com/skyfloogle/gm8x_fix/releases/latest/download/gm8x_fix.exe" >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO SaveBinaryData "Util\gm8x_fix.exe",objWinHttp.responseBody >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO. >> %tmp%\PL-Temp\gm8x_fix.vbs
ECHO End Function >> %tmp%\PL-Temp\gm8x_fix.vbs

ECHO Downloading gm8x_fix
START /wait "" "%tmp%\PL-Temp\gm8x_fix.vbs"

::----------------------------------------------------------
:SilentCMD

if exist "User\Util\SilentCMD.txt" (
GOTO SilentCMD
) else (
GOTO End
)

:SilentCMD

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO URL = "https://www.7-zip.org/a/7z2201-extra.7z" >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\7z2201-extra.7z",objWinHttp.responseBody >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMDtemp.vbs
ECHO End Function >> %tmp%\PL-Temp\SilentCMDtemp.vbs

START /wait "" "%tmp%\PL-Temp\SilentCMDtemp.vbs"

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO URL = "https://github.com/stbrenner/SilentCMD/releases/latest/download/SilentCMD.zip" >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\SilentCMD.zip",objWinHttp.responseBody >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO. >> %tmp%\PL-Temp\SilentCMD.vbs
ECHO End Function >> %tmp%\PL-Temp\SilentCMD.vbs

ECHO Downloading SilentCMD
START /wait "" "%tmp%\PL-Temp\SilentCMD.vbs"
ECHO Extracting SilentCMD
"Util\7zr.exe" x "%tmp%\PL-Temp\7z2201-extra.7z" -o"%tmp%\PL-Temp\7z"
"%tmp%\PL-Temp\7z\7za.exe" x "%tmp%\PL-Temp\SilentCMD.zip" -o"Util"

::----------------------------------------------------------

if exist "User\fti.txt" (
rmdir "%tmp%\PL-Temp" /S /Q
exit
) else (
GOTO fti
)

:fti
rmdir "%tmp%\PL-Temp" /S /Q
ECHO first time init >> "User\fti.txt"
ECHO close >> "User\close.txt"