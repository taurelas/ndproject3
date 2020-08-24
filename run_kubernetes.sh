#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=mbeimcik/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api --generator=run-pod/v1 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
sleep 5
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward api 80:80 
