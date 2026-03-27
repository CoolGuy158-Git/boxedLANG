#!/bin/bash

# Get the absolute path of the script directory
PROJECT_ROOT=$(pwd)

echo "🚀 Starting boxedLANG installation..."

# 1. Install the Runtime Server (bx_rs)
echo "📦 Installing bx_rs (runtime server)..."
cd "$PROJECT_ROOT/runtime server" && pip install -e . --break-system-packages

# 2. Install the CLI Runner (boxrun)
echo "📦 Installing boxrun (CLI)..."
cd "$PROJECT_ROOT/boxrun" && pip install -e . --break-system-packages

echo "✅ Installation complete! You can now use the 'boxrun' command."