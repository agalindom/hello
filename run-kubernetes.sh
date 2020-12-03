#!/usr/bin/env bash

dockerpath="alexgm34/hello:latest"

# Run in Docker Hub container with kubernetes
kubectl run helloapp\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=helloapp

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward helloapp 8000:80 9090:9090