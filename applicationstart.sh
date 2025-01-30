#!/bin/bash

cd /home/ubuntu  # Go to the deployed directory

# Install PM2 (if not already installed)
npm install pm2 -g

# Start the application using PM2
pm2 start server.js  # Make sure server.js is the correct entry point

# Save the PM2 process list to restart the app automatically after reboot
pm2 save

echo "Application started successfully with PM2"
