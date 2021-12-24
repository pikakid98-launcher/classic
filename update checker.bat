@ECHO OFF
mkdir "%userprofile%\Documents\Pikakid98 Launcher"
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"
mkdir "Git"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/pikakid98/pikakid98-launcher-data/releases/download/data/Git.7z --immediate --output-directory "%tmp%\PL-Temp"

7z x "%tmp%\PL-Temp\Git.7z" -o"Git"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"