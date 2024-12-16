#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

#
if [ -z "$URL_APP" ]; then
  echo "Error: URL_APP environment variable is not set."
  exit 1
fi

echo "Add install app from $URL_APP"
curl -O "$URL_APP"

#
JAR_NAME=$(basename "$URL_APP")

echo "Renaming the JAR file to app.jar..."
mv "$JAR_NAME" app.jar

echo "Download and renaming complete."
