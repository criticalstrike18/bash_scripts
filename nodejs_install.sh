#!/bin/bash

# Update package index
sudo apt update

# Install required packages
sudo apt install -y curl

# Add NodeSource repository for latest Node.js LTS
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -

# Install Node.js (which includes npm)
sudo apt install -y nodejs

# Verify installation
node -v
npm -v

echo "Node.js and npm have been installed successfully!"
