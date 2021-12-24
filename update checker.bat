@ECHO OFF
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/pikakid98/pikakid98-launcher-data/archive/refs/heads/main.zip --immediate --output-directory "%tmp%\PL-Temp"

mkdir "Git"

7z.exe x "%tmp%\PL-Temp\Git.7z" -o"Git"
rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"