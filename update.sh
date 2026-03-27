#!/bin/bash

PROJECT_ROOT=$(pwd)

echo "🔄 Updating boxedLANG from GitHub..."

# Pull latest code
git pull origin main

# Re-install in case pyproject.toml or dependencies changed
echo "📦 Refreshing bx_rs..."
cd "$PROJECT_ROOT/runtime server" && pip install -e . --break-system-packages

echo "📦 Refreshing boxrun..."
cd "$PROJECT_ROOT/boxrun" && pip install -e . --break-system-packages

echo "✨ boxedLANG is now up to date!"