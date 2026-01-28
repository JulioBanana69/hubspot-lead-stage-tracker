#!/bin/bash

# Lead Stage Tracker - Automated Build & Deploy Script
# This script automates the entire setup, build, and deployment process

set -e  # Exit on error

echo "🚀 Starting Lead Stage Tracker Setup & Deployment..."
echo ""

# 1. Check if we're in the right directory
if [ ! -f "package.json" ]; then
  echo "❌ Error: package.json not found. Please run this script from the project root directory."
  exit 1
fi

echo "✅ Project directory verified"
echo ""

# 2. Check if Node.js and npm are installed
echo "Checking Node.js and npm..."
if ! command -v node &> /dev/null; then
  echo "❌ Node.js is not installed. Installing via Homebrew..."
  brew install node
else
  echo "✅ Node.js is installed: $(node --version)"
fi

if ! command -v npm &> /dev/null; then
  echo "❌ npm is not installed."
  exit 1
else
  echo "✅ npm is installed: $(npm --version)"
fi
echo ""

# 3. Clean previous installations
echo "Cleaning previous installations..."
rm -rf node_modules
rm -f package-lock.json
echo "✅ Cleaned"
echo ""

# 4. Install dependencies
echo "Installing dependencies (this may take a few minutes)..."
npm install
echo "✅ Dependencies installed"
echo ""

# 5. Build the project
echo "Building the project..."
npm run build
echo "✅ Build completed"
echo ""

# 6. Check if HubSpot CLI is installed
echo "Checking HubSpot CLI..."
if ! command -v hs &> /dev/null; then
  echo "Installing HubSpot CLI..."
  npm install -g @hubspot/cli
  echo "✅ HubSpot CLI installed"
else
  echo "✅ HubSpot CLI is already installed"
fi
echo ""

# 7. Create auth config file (user will need to authenticate)
echo "⚠️  Next step requires HubSpot authentication."
echo "Please run the following command:"
echo ""
echo "    hs auth"
echo ""
echo "After authentication, the module will be deployed automatically."
echo ""
echo "Setup completed successfully! 🎉"
