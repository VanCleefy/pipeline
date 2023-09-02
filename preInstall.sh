#!/bin/bash

# Install necessary packages/tools
sudo apt-get update
sudo apt-get install -y python3 python3-pip docker.io

# Create a virtual environment and activate it
python3 -m venv flask-app/venv
source flask-app/venv/bin/activate

# Install Python packages
pip install flask

echo "Tools and environments installed successfully."
