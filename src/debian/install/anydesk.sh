#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Any desk to remote"
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" | tee /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install -y anydesk
apt-get clean -y
