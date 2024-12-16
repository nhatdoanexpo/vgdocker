#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install app"
curl -O https://cdn.phanmemvet.vn/data/browser-task-1.0.0.jar

echo "Renaming the JAR file to app.jar..."
mv browser-task-1.0.0.jar app.jar

echo "Download and renaming complete."