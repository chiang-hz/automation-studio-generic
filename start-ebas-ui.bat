@echo off
setlocal

cd /d "%~dp0"

rem Requested compatibility mode: disable Node TLS certificate verification for this process tree.
set "NODE_TLS_REJECT_UNAUTHORIZED=0"

rem Keep Windows system CA support configured as a fallback if TLS verification is re-enabled later.
if "%NODE_USE_SYSTEM_CA%"=="" set "NODE_USE_SYSTEM_CA=1"

echo [WARNING] NODE_TLS_REJECT_UNAUTHORIZED=0 - TLS certificate verification is DISABLED.
echo [WARNING] This setting applies only to this launcher process tree.

set "UI_PORT=%UI_PORT%"
if "%UI_PORT%"=="" set "UI_PORT=4173"

set "REPORT_ADAPTER=ebas"
set "HEADLESS=false"
set "SLOW_MO=300"
set "DOWNLOAD_DIR=%CD%\downloads"
set "EBAS_STORAGE_STATE=%CD%\.auth\ebas-storage-state.json"
set "EBAS_DEBUG_DIR=%CD%\debug\ebas"
if "%EBAS_ENTRY_URL%"=="" set "EBAS_ENTRY_URL=https://ebasnew.ebas.gov.tw/SSO/ToLink/0/1103"

if "%PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH%"=="" (
  set "LOCAL_CHROMIUM=%LOCALAPPDATA%\ms-playwright\chromium-1223\chrome-win64\chrome.exe"
  if exist "%LOCAL_CHROMIUM%" set "PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH=%LOCAL_CHROMIUM%"
)

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js was not found. Please install Node.js 24 or later, then run this file again.
  pause
  exit /b 1
)

where npm.cmd >nul 2>nul
if errorlevel 1 (
  echo npm was not found. Please reinstall Node.js, then run this file again.
  pause
  exit /b 1
)

if not exist ".env" (
  if exist ".env.example" copy ".env.example" ".env" >nul
)

if not exist "node_modules" (
  echo Installing dependencies. This may take a few minutes on first run...
  call npm.cmd install
  if errorlevel 1 (
    echo npm install failed.
    pause
    exit /b 1
  )
)

if not exist "downloads" mkdir "downloads"
if not exist "data" mkdir "data"
if not exist ".auth" mkdir ".auth"

echo.
echo EBAS report automation UI is starting...
echo URL: http://localhost:%UI_PORT%/legacy/
if /i "%UI_DEV_MODE%"=="true" (
  echo Mode: development watch
) else (
  echo Mode: normal
)
echo.
echo Keep this window open while using the UI.
echo Press Ctrl+C in this window to stop the service.
echo.

start "" /b powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Sleep -Seconds 3; Start-Process 'http://localhost:%UI_PORT%/legacy/'"

if /i "%UI_DEV_MODE%"=="true" (
  call npm.cmd run ui:dev
) else (
  call npm.cmd run ui
)

echo.
echo Service stopped.
pause
