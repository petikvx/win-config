# Unblock-File .\install.ps1
# Set-ExecutionPolicy Unrestricted

$Shell = New-Object -ComObject Wscript.Shell
    

# Download and setup ninite with specific software
Invoke-WebRequest -Uri "https://ninite.com/7zip-chrome-notepadplusplus-filezilla/ninite.exe" -OutFile "ninite.exe"
.\ninite.exe| Out-Null
Remove-Item ninite.exe

# Create Directory
New-Item $env:USERPROFILE + "\Desktop\ptk-tools" -itemType Directory

# Download PE Studio
Invoke-WebRequest -Uri "https://www.winitor.com/tools/pestudio/current/pestudio.zip" -OutFile "pestudio.zip"
Expand-Archive .\pestudio.zip ptk-tools
Remove-Item pestudio.zip
$Shortcut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\pestudio.lnk")
# Cible du raccourci
$Shortcut.TargetPath = $env:USERPROFILE + "\Desktop\ptk-tools\pestudio\pestudio.exe"
# Chemin vers l'icône du raccourci
$Shortcut.IconLocation = $env:USERPROFILE + "\Desktop\ptk-tools\pestudio\pestudio.exe, 0";
$Shortcut.Save()

# CryptoTester
Invoke-WebRequest -Uri "https://download.bleepingcomputer.com/demonslay335/CryptoTester.zip" -OutFile "CryptoTester.zip"
Expand-Archive .\CryptoTester.zip ptk-tools\CryptoTester| Out-Null
Remove-Item CryptoTester.zip


