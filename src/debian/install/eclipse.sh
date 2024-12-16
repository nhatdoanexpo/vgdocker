#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "install eclipse-java-2023-03-R-linux-gtk-x86_64"
wget https://ftp.jaist.ac.jp/pub/eclipse/technology/epp/downloads/release/2023-03/R/eclipse-java-2023-03-R-linux-gtk-x86_64.tar.gz
tar xzf eclipse-java-2023-03-R-linux-gtk-x86_64.tar.gz
mv eclipse /opt/eclipse
