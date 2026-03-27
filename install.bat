@echo off
echo 🚀 Starting boxedLANG installation for Windows...

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python not found. Please install Python 3.10+ and add it to your PATH.
    pause
    exit /b
)

set PROJECT_ROOT=%cd%

echo 📦 Installing bx_rs (runtime server)...
cd /d "%PROJECT_ROOT%\runtime server"
pip install -e .

echo 📦 Installing boxrun (CLI)...
cd /d "%PROJECT_ROOT%\boxrun"
pip install -e .

echo ✅ Installation complete! You can now use the 'boxrun' command.
pause