@echo off
chcp 65001 >nul
set PYTHONIOENCODING=utf-8
cd /d "%~dp0"

set "PY="
for /d %%D in ("%LOCALAPPDATA%\Programs\Python\Python3*") do if exist "%%D\python.exe" set "PY=%%D\python.exe"
if not defined PY set "PY=python"

echo.
echo  ===== Bridge Cafe : making your photos and captions =====
echo.
"%PY%" "사진변환.py"
echo.
echo  Done. Press any key to close this window.
pause >nul
