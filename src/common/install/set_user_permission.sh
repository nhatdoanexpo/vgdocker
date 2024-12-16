#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

# Set locale if necessary
if [ ! -d "/opt" ]; then
    echo "/opt directory not found, creating it."
    mkdir -p /opt
fi

# Fix permissions for provided directories
for var in "$@"; do
    echo "fix permissions for: $var"
    find "$var"/ -name '*.sh' -exec chmod a+x {} +
    find "$var"/ -name '*.desktop' -exec chmod a+x {} +
    chgrp -R 0 "$var" && chmod -R a+rw "$var" && find "$var" -type d -exec chmod a+x {} +
done

# Handle /opt permissions
if [ -d "/opt" ]; then
    chgrp -R 1000 /opt/* && chmod -R a+rwx /opt/*
else
    echo "/opt directory does not exist."
fi
