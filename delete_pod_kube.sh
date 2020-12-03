#!/usr/bin/env bash

# delete pod
kubectl cordon minikube && \
    kubectl delete pod $1 && \
    kubectl uncordon minikube