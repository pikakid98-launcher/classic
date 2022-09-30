@ECHO OFF

if exist "User\fti.txt" (
GOTO Continue
) ELSE (
ECHO first time init >> "User\fti.txt"
GOTO Continue
)


:Continue

if exist "Git" ( rmdir /S /Q "Git" )

if exist "%tmp%\PL-Temp" ( rmdir /S /Q "%tmp%\PL-Temp" )

if exist "Data" (
GOTO Main
) else (
mkdir "Data"
GOTO Main
)

:Main
mkdir "Git"

mkdir "%tmp%\PL-Temp"
ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO URL = "https://github.com/pikakid98/pikakid98-launcher-data/releases/download/data-dev/Git-dev_30-9-2022.7z" >> %tmp%\PL-Temp\git.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\git.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\Git-06.7z",objWinHttp.responseBody >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\git.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\git.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\git.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\git.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\git.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\git.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\git.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\git.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\git.vbs
ECHO. >> %tmp%\PL-Temp\git.vbs
ECHO End Function >> %tmp%\PL-Temp\git.vbs

START /wait "" "%tmp%\PL-Temp\git.vbs"

Util\7zr.exe x "%tmp%\PL-Temp\Git-06.7z" -o"Git"

ECHO close >> "User\close.txt"