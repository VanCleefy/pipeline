#!/bin/bash

cd flask-app

# Build the Docker image
docker build -t flask-app .

# Run the Docker container
docker run -p 5000:5000 flask-app
