#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "run BE selenium"
git clone https://github.com/nhatdoanexpo/csvetgoapp.git
cd csvetgoapp

# Install BE
java -jar zalo-bot-1.0.0.jar



