@echo off
setlocal
cd /d "%~dp0"

rem Corporate TLS inspection commonly installs its root CA in Windows, while
rem Node does not use that store unless explicitly requested.
set "NODE_USE_SYSTEM_CA=1"

for /d %%D in ("%LOCALAPPDATA%\ms-playwright\chromium-*") do (
  if exist "%%~fD\chrome-win64\chrome.exe" (
    echo Existing Playwright Chromium found: %%~fD\chrome-win64\chrome.exe
    echo Runtime setup is not required. Automation Studio will use this browser.
    pause
    exit /b 0
  )
)

where node.exe >nul 2>nul
if errorlevel 1 (
  echo Node.js is required only to assemble a portable development package.
  pause
  exit /b 1
)

call npm.cmd install
if errorlevel 1 (
  echo npm install failed.
  pause
  exit /b 1
)

if not exist "runtime\browsers" mkdir "runtime\browsers"
set "PLAYWRIGHT_BROWSERS_PATH=%CD%\runtime\browsers"
call npx.cmd playwright install chromium
if errorlevel 1 (
  echo.
  echo Chromium download failed because Node.js could not verify the HTTPS certificate.
  echo NODE_USE_SYSTEM_CA=1 was enabled so Windows trusted root certificates are used.
  echo If it still fails, ask IT for the company HTTPS inspection root CA in Base-64 .cer format,
  echo then set NODE_EXTRA_CA_CERTS to that certificate path and run this file again.
  echo TLS certificate verification was not disabled.
  pause
  exit /b 1
)
echo Runtime setup completed.
pause
