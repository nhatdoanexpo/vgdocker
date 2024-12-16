#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing Chromium Browser on Debian..."

# Update package list
echo "Updating package list..."
apt-get update -y

# Check and install Chromium
echo "Checking and installing Chromium..."
if apt-cache show chromium > /dev/null 2>&1; then
    apt-get install -y chromium
    echo "Chromium installed successfully."
else
    echo "Chromium package not found in default repositories. Trying backports..."
    echo "deb http://deb.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list
    apt-get update -y
    apt-get install -y -t bullseye-backports chromium || {
        echo "Failed to install Chromium from backports. Please check your Debian version." >&2
        exit 1
    }
fi

# Ensure chromium-browser symlink is correct
echo "Ensuring chromium-browser symlink exists..."
if ! command -v chromium-browser &> /dev/null; then
    ln -sf /usr/bin/chromium /usr/bin/chromium-browser
    echo "Created symbolic link for chromium-browser."
else
    echo "Symbolic link for chromium-browser already exists."
fi

echo "Chromium installation process completed!"
