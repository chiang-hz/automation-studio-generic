@echo off
setlocal
cd /d "%~dp0"

rem Corporate TLS inspection commonly installs its root CA in Windows, while
rem Node does not use that store unless explicitly requested.
set "NODE_USE_SYSTEM_CA=1"

rem The browser cache and Node packages are separate runtime requirements.
rem Install only the browser-automation packages used by the backend. Using
rem global mode with this project as the prefix avoids installing the frontend
rem and development dependencies declared in the root package.json.
set "RUNTIME_PACKAGES_READY=1"
if not exist "%~dp0node_modules\playwright\package.json" set "RUNTIME_PACKAGES_READY="
if not exist "%~dp0node_modules\playwright-extra\package.json" set "RUNTIME_PACKAGES_READY="
if not exist "%~dp0node_modules\puppeteer-extra-plugin-stealth\package.json" set "RUNTIME_PACKAGES_READY="

if not defined RUNTIME_PACKAGES_READY (
  where node.exe >nul 2>nul
  if errorlevel 1 (
    echo Node.js is required only to assemble a portable development package.
    pause
    exit /b 1
  )

  echo Browser automation packages are missing. Installing the minimal runtime...
  set "PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1"
  call npm.cmd install --global --prefix "%CD%" --no-audit --no-fund playwright@1.61.0 playwright-extra@4.3.6 puppeteer-extra-plugin-stealth@2.11.2
  if errorlevel 1 (
    set "PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD="
    echo Minimal runtime installation failed.
    pause
    exit /b 1
  )
  set "PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD="

  if not exist "%~dp0node_modules\playwright\package.json" goto missing_package
  if not exist "%~dp0node_modules\playwright-extra\package.json" goto missing_package
  if not exist "%~dp0node_modules\puppeteer-extra-plugin-stealth\package.json" goto missing_package
)

goto packages_ready

:missing_package
echo One or more browser automation packages are still missing.
echo Check the npm output above and network access.
pause
exit /b 1

:packages_ready

for /d %%D in ("%LOCALAPPDATA%\ms-playwright\chromium-*") do (
  if exist "%%~fD\chrome-win64\chrome.exe" (
    echo Existing Playwright Chromium found: %%~fD\chrome-win64\chrome.exe
    echo Playwright package and browser runtime are ready.
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
