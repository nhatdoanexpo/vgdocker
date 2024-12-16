#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install JDK 22"
curl -O https://download.java.net/java/GA/jdk22.0.1/c7ec1332f7bb44aeba2eb341ae18aca4/8/GPL/openjdk-22.0.1_linux-x64_bin.tar.gz
tar xvf openjdk-22.0.1_linux-x64_bin.tar.gz
mv jdk-22.0.1 /opt/
