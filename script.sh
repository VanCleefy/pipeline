#!/bin/bash

# Create a Flask app directory and navigate into it
mkdir flask-app
cd flask-app

# Create a basic Flask app
echo "from flask import Flask\napp = Flask(__name__)\n@app.route('/')\ndef hello():\n    return 'Hello, Flask!'\nif __name__ == '__main__':\n    app.run(host='0.0.0.0')" > app.py

# Create a Dockerfile
echo "FROM python:3.8-slim\nWORKDIR /app\nCOPY requirements.txt requirements.txt\nRUN pip3 install -r requirements.txt\nCOPY . .\nCMD [\"python3\", \"app.py\"]" > Dockerfile

# Create a requirements.txt file
echo "flask" > requirements.txt

# Build the Docker image
docker build -t flask-app .

# Run the Docker container
docker run -p 5000:5000 flask-app

# Clean up
cd ..
rm -rf flask-app
