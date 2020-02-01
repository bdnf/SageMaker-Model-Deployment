#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=olehbodunov/ml-model-predictor
INITIAL_IMAGE_NAME=python-ml-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $INITIAL_IMAGE_NAME $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
