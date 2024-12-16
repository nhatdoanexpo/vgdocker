#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install JDK 18"
curl -O https://download.java.net/java/GA/jdk18/43f95e8614114aeaa8e8a5fcf20a682d/36/GPL/openjdk-18_linux-x64_bin.tar.gz
tar xvf openjdk-18_linux-x64_bin.tar.gz
mv jdk-18 /opt/
