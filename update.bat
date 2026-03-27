@echo off
echo 🔄 Updating boxedLANG from GitHub...

:: Pull latest changes
git pull origin main
if %errorlevel% neq 0 (
    echo ❌ Git pull failed. Make sure Git is installed and you are in the repo.
    pause
    exit /b
)

set PROJECT_ROOT=%cd%

echo 📦 Refreshing bx_rs...
cd /d "%PROJECT_ROOT%\runtime server"
pip install -e .

echo 📦 Refreshing boxrun...
cd /d "%PROJECT_ROOT%\boxrun"
pip install -e .

echo ✨ boxedLANG is now up to date!
pause