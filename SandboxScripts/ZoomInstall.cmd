REM Download Latest Zoom Client
curl -L "https://zoom.us/client/latest/ZoomInstallerFull.msi" --output "%TEMP%\ZoomInstallerFull.msi"

REM Install Zoom
msiexec /i %TEMP%\ZoomInstallerFull.msi /quiet /qn /norestart /log "%TEMP%/zoom-install.log" ZoomAutoUpdate="true"

REM Run Zoom
"C:\Program Files (x86)\Zoom\bin\Zoom.exe"