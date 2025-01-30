#!/bin/bash

cd /home/ubuntu  # Go to the deployed directory

# Install dependencies
npm install

if [ $? -eq 0 ]; then
    echo "NPM dependencies installed successfully"
else
    echo "NPM install failed"
    exit 1
fi
