# Unblock-File .\install.ps1
# Set-ExecutionPolicy Unrestricted

Function New-Shortcut{

    param(
       [parameter(Mandatory=$true)][string]$ShortcutFullName,
       [parameter(Mandatory=$true)][string]$ShortcutTarget
    )
    
    $ShortcutObject = New-Object -comObject WScript.Shell
    $Shortcut = $ShortcutObject.CreateShortcut($ShortcutFullName)
    $Shortcut.TargetPath = $ShortcutTarget
    $Shortcut.Save()
    
    } # Function New-Shortcut
    

# Download and setup ninite with specific software
Invoke-WebRequest -Uri "https://ninite.com/7zip-chrome-notepadplusplus-filezilla/ninite.exe" -OutFile "ninite.exe"
.\ninite.exe
Remove-Item ninite.exe

# Create Directory
New-Item "ptk-tools" -itemType Directory

# Download PE Studio
Invoke-WebRequest -Uri "https://www.winitor.com/tools/pestudio/current/pestudio.zip" -OutFile "pestudio.zip"
Expand-Archive .\pestudio.zip ptk-tools
Remove-Item pestudio.zip
New-Shortcut -ShortcutFullName "pestudio.lnk" -ShortcutTarget "ptk-tools\pestudio\pestudio.exe"


