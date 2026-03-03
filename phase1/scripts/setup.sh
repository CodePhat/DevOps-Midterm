#!/bin/bash

# =================================================================
# Project: Cloud Migration & Containerization Midterm
# Script: setup.sh (Phase 1)
# Description: Prepares Ubuntu server with Node.js, Nginx, and Docker.
# =================================================================

# 1. Update System Packages
echo "--- Updating system packages ---"
sudo apt-get update && sudo apt-get upgrade -y

# 2. Install Essential Tools
echo "--- Installing build-essential and curl ---"
sudo apt-get install -y build-essential curl git wget

# 3. Install Node.js (Version 20 LTS)
echo "--- Installing Node.js ---"
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y node.js

# 4. Install Nginx (For Phase 2 Reverse Proxy)
echo "--- Installing Nginx ---"
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# 5. Install Docker & Docker Compose (For Phase 3)
echo "--- Installing Docker & Docker Compose ---"
sudo apt-get install -y docker.io docker-compose
sudo usermod -aG docker $USER

# 6. Create Application Directory Structure
echo "--- Creating app directories for logs and uploads ---"
sudo mkdir -p /var/www/app/logs
sudo mkdir -p /var/www/app/uploads
sudo chown -R $USER:$USER /var/www/app

echo "--- SETUP COMPLETE ---"
echo "Please log out and log back in for Docker group changes to take effect."