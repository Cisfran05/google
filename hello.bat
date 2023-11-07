@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    (echo Set objShell = CreateObject("WScript.Shell"^)
     echo objShell.Popup "NO ADMIN!!!", 0, "Admin Check", 16
    ) > "%temp%\tmp.vbs"
    wscript "%temp%\tmp.vbs"
    del "%temp%\tmp.vbs"
) else (
    (echo Set objShell = CreateObject("WScript.Shell"^)
     echo objShell.Popup "YES ADMIN!!!", 0, "Admin Check", 64
    ) > "%temp%\tmp.vbs"
    wscript "%temp%\tmp.vbs"
    del "%temp%\tmp.vbs"
)

::pause
