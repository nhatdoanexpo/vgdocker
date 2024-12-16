#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update
apt-get install -y vim wget net-tools locales bzip2 procps unzip zip curl git gnupg software-properties-common  \
python3-numpy
#used for websockify/novnc
apt-get install -y sudo && echo 'root:vetgo' | chpasswd
apt-get clean -y

echo "generate locales for en_US.UTF-8"
locale-gen en_US.UTF-8
