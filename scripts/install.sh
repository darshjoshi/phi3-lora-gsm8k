#!/bin/bash
# One-step installation script

echo "🔧 Creating virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "📦 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Setup complete. To activate run: source .venv/bin/activate"
