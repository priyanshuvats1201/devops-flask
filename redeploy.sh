#!/bin/bash

echo "Stopping old container..."
docker stop flask_resume 2>/dev/null

echo "Removing old container..."
docker rm flask_resume 2>/dev/null

echo "Building new Docker image..."
docker build -t flask_app:resume .

echo "Running new container..."
docker run -d -p 5000:5000 --name flask_resume flask_app:resume

echo "Done! Visit http://<vm-ip>:5000/resume"
