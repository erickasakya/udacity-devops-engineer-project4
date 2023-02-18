#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Step 1: Create dockerpath
dockerpath="erickasakya/house_prediction_ml"

# Step 2: Authenticate & tag
export DOCKER_ID_USER = "erickasakya"
docker login
docker tag house_prediction_ml $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3: Push image to a docker repository
docker push $dockerpath
