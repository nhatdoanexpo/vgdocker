#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Updating system..."
apt update && apt upgrade -y

echo "Installing Chromium..."
apt install -y chromium


echo "Cleaning up cache..."
apt clean && rm -rf /var/lib/apt/lists/*

echo "Chromium installed successfully!"
