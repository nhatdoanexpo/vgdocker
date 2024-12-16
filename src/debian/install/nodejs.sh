
#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Node"
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
echo "Node installation complete ."
