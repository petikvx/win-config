rem https://ss64.com/nt/syntax-variables.html

copy wallpaper.jpg C:\wallpaper.jpg
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\wallpaper.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

rem https://sourceforge.net/projects/x64dbg/files/snapshots/
xcopy /E x64dbg\ %homepath%\desktop\x64dbg\

rem https://horsicq.github.io/
xcopy /E DiE\ %homepath%\desktop\DiE\
echo [InternetShortcut] >> "%homepath%\desktop\DiE.url"
echo URL="C:\Users\WDAGUtilityAccount\Desktop\DiE\die.exe" >> "%homepath%\desktop\DiE.url"
echo IconFile=C:\Users\WDAGUtilityAccount\Desktop\DiE\die.exe >> "%homepath%\desktop\DiE.url"
echo IconIndex=0 >> "%homepath%\desktop\DiE.url"

rem https://www.aldeid.com/wiki/PEiD
xcopy /E PEiD\ %homepath%\desktop\PEiD\
echo [InternetShortcut] >> "%homepath%\desktop\PEiD.url"
echo URL="C:\Users\WDAGUtilityAccount\Desktop\PEiD\PEiD.exe" >> "%homepath%\desktop\PEiD.url"
echo IconFile=C:\Users\WDAGUtilityAccount\Desktop\PEiD\PEiD.exe >> "%homepath%\desktop\PEiD.url"
echo IconIndex=0 >> "%homepath%\desktop\PEiD.url"

rem https://github.com/dnSpy/dnSpy/releases/tag/v6.1.8
xcopy /E dnSpy-net-win32\ %homepath%\desktop\dnSpy-net-win32\
xcopy /E docs\ %homepath%\desktop\docs\

echo [InternetShortcut] >> "%homepath%\desktop\dnSpy-net-win32.url"
echo URL="C:\Users\WDAGUtilityAccount\Desktop\dnSpy-net-win32\dnSpy.exe" >> "%homepath%\desktop\dnSpy-net-win32.url"
echo IconFile=C:\Users\WDAGUtilityAccount\Desktop\dnSpy-net-win32\dnSpy.exe >> "%homepath%\desktop\dnSpy-net-win32.url"
echo IconIndex=0 >> "%homepath%\desktop\dnSpy-net-win32.url"

rem https://www.winitor.com/download
xcopy /E pestudio\ %homepath%\desktop\pestudio\
echo [InternetShortcut] >> "%homepath%\desktop\pestudio.url"
echo URL="C:\Users\WDAGUtilityAccount\Desktop\pestudio\pestudio.exe" >> "%homepath%\desktop\pestudio.url"
echo IconFile=C:\Users\WDAGUtilityAccount\Desktop\pestudio\pestudio.exe >> "%homepath%\desktop\pestudio.url"
echo IconIndex=0 >> "%homepath%\desktop\pestudio.url"

start /Wait %homepath%\desktop\x64dbg\release\x96dbg.exe

rem https://hex-rays.com/ida-free/#download
start /Wait idafree77_windows.exe

rem https://www.torproject.org/download/
start /Wait torbrowser-install.exe
copy "C:\Users\WDAGUtilityAccount\Desktop\Tor Browser\Start Tor Browser.lnk" %homepath%\desktop\

rem https://mh-nexus.de/en/hxd/
start /Wait HxDSetup.exe

rem https://docs.microsoft.com/en-us/sysinternals/downloads/procmon
start ProcessMonitor.zip
