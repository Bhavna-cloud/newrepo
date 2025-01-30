#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu

# Install PM2 globally if not already installed
npm install pm2 -g

# Start the application with PM2
pm2 start server.js  # Replace server.js with your main entry file

# Ensure PM2 saves the process list (to restart on boot)
pm2 save

# Confirm that the application started successfully
echo "Application started successfully with PM2"
