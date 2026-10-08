@echo off
setlocal
cd /d "%~dp0"

rem Requested compatibility mode: disable Node TLS certificate verification for this process tree.
set "NODE_TLS_REJECT_UNAUTHORIZED=0"

rem Keep Windows system CA support configured as a fallback if TLS verification is re-enabled later.
if "%NODE_USE_SYSTEM_CA%"=="" set "NODE_USE_SYSTEM_CA=1"

rem Optional corporate Root/Intermediate CA chain may be supplied before startup:
rem   set "NODE_EXTRA_CA_CERTS=D:\AI\certs\company-ca-chain.pem"
if not "%NODE_EXTRA_CA_CERTS%"=="" echo [TLS] Extra CA: %NODE_EXTRA_CA_CERTS%
if "%NODE_TLS_REJECT_UNAUTHORIZED%"=="0" (
  echo [WARNING] NODE_TLS_REJECT_UNAUTHORIZED=0 - TLS certificate verification is DISABLED.
  echo [WARNING] Use this only for temporary diagnostics. Configure NODE_EXTRA_CA_CERTS for normal use.
)

set "STUDIO_NODE=%~dp0runtime\node\node.exe"
if exist "%STUDIO_NODE%" goto run

where node.exe >nul 2>nul
if errorlevel 1 goto missing
set "STUDIO_NODE=node.exe"

:run
if not exist "%~dp0node_modules\playwright\package.json" (
  echo [Automation Studio] Playwright runtime is missing.
  echo Please use the complete portable package or run setup-runtime.bat once on a development machine.
  pause
  exit /b 1
)

if "%UI_PORT%"=="" set "UI_PORT=4173"
if "%PLAYWRIGHT_BROWSERS_PATH%"=="" set "PLAYWRIGHT_BROWSERS_PATH=%CD%\runtime\browsers"
if "%REPORT_ADAPTER%"=="" set "REPORT_ADAPTER=ebas"
if "%HEADLESS%"=="" set "HEADLESS=false"
if "%DOWNLOAD_DIR%"=="" set "DOWNLOAD_DIR=%CD%\downloads"
if "%EBAS_STORAGE_STATE%"=="" set "EBAS_STORAGE_STATE=%CD%\.auth\ebas-storage-state.json"
if "%EBAS_DEBUG_DIR%"=="" set "EBAS_DEBUG_DIR=%CD%\debug\ebas"

if not exist "downloads" mkdir "downloads"
if not exist "debug" mkdir "debug"
if not exist ".auth" mkdir ".auth"

echo.
echo Automation Studio is starting...
echo URL: http://127.0.0.1:%UI_PORT%
echo EBAS compatibility workspace: http://127.0.0.1:%UI_PORT%/legacy/
echo Keep this window open. Press Ctrl+C to stop.
echo.

rem The server opens the interface after startup, always opening it automatically.
"%STUDIO_NODE%" --experimental-strip-types src\ui\server.ts
if errorlevel 1 pause
exit /b %errorlevel%

:missing
echo [Automation Studio] Portable Node runtime was not found.
echo Expected: runtime\node\node.exe
echo Please use the complete Windows portable package.
pause
exit /b 1
