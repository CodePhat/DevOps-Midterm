#!/bin/bash
# Phase 1 Automation Script for Node.js + MongoDB Stack

echo "--- Starting System Setup ---"
sudo apt-get update && sudo apt-get upgrade -y

# 1. Install Node.js 20 LTS
echo "--- Installing Node.js 20 ---"
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y node.js

# 2. Install MongoDB (Required for this app's 'Real' mode)
echo "--- Installing MongoDB ---"
sudo apt-get install -y gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor
echo "deb [ [arch=amd64,arm64] signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl enable mongod
sudo systemctl start mongod

# 3. Install Nginx & Docker (Prepping for Phase 2 & 3)
echo "--- Installing Nginx and Docker ---"
sudo apt-get install -y nginx docker.io docker-compose
sudo usermod -aG docker $USER

# 4. Prepare App Directory
echo "--- Preparing Application Folders ---"
sudo mkdir -p /var/www/app/public/uploads
sudo chown -R $USER:$USER /var/www/app

echo "--- Setup Complete! ---"

