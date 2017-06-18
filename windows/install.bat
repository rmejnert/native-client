@echo off

ECHO .. Writting to Chrome Registry
ECHO .. Key: HKCU\Software\Google\Chrome\NativeMessagingHosts\com.add0n.stylus
REG ADD "HKCU\Software\Google\Chrome\NativeMessagingHosts\com.add0n.stylus" /ve /t REG_SZ /d "%LocalAPPData%\com.add0n.stylus\manifest-chrome.json" /f

ECHO .. Writting to Firefox Registry
ECHO .. Key: HKCU\SOFTWARE\Mozilla\NativeMessagingHosts\com.add0n.stylus
FOR %%f in ("%LocalAPPData%") do SET SHORT_PATH=%%~sf
REG ADD "HKCU\SOFTWARE\Mozilla\NativeMessagingHosts\com.add0n.stylus" /ve /t REG_SZ /d "%SHORT_PATH%\com.add0n.stylus\manifest-firefox.json" /f

pushd "%~dp0"
CD app

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
  ..\node\x64\node.exe install.js "%LocalAPPData%"
) ELSE (
  ..\node\x86\node.exe install.js "%LocalAPPData%"
)

PAUSE
