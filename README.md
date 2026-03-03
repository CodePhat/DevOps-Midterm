# Midterm Project: Cloud Migration & Containerization
**Course:** 502094 - Software Deployment, Operations and Maintenance

## Project Overview
This project demonstrates the deployment of a full-stack web application using two methods:
1. **Traditional Deployment:** Manual setup on Ubuntu with Nginx and PM2.
2. **Modern Deployment:** Containerization using Docker and Docker Compose.

## Tech Stack
- **Backend:** Node.js / Express
- **Database:** MongoDB
- **Proxy:** Nginx
- **Infrastructure:** AWS Academy (Ubuntu 22.04 LTS)

## Phase 1: Automation
The `phase1/scripts/setup.sh` script automates the installation of:
- Node.js & NPM
- Nginx
- Docker & Docker Compose
- Directory structures for persistence