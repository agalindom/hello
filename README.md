# hello

Hello world flask app

[![CircleCI](https://circleci.com/gh/agalindom/hello.svg?style=svg)](https://circleci.com/gh/agalindom/hello)

## Overview

This is a hello world flask app that incorporates Docker, Prometheus, kubernetes and CircleCI fdor continuous integration

## Requirements

- Docker desktop or docker installed in your machine

- Minikube

- Kubectl

- Account on Circleci

## Usage

### Kubernetes-Docker

1. Run the shell script `run-kubernetes.sh`

    - After this, step visit `localhost:8000` to see the hello world message in the browser

2. On your terminal type `kubectl get nodes` to see that the pod is running

3. To delete the pod run `delete_pod_kube.sh {NAME_OF_POD}`

## Prometheus

- As of now prometheus is not automatically available when running kubernetes, but can be started by accessing the docker container. For this run:

1. `docker pull alexgm34/hello:latest`

2. `docker run -p 8000:80 -p 9090:9090 -d alexgm34/hello`

    - After this, step visit `localhost:8000` to see the hello world message in the browser

3. Access the container with `docker exec -it {CONTAINER_ID} /bin/bash`

4. cd into prometheus directory `cd prometheus-*`

5. Edit **prometheus.yml** with vim and on targets add `localhost:80`, save and exit

6. Start prometheus with `./prometheus --config.file=prometheus.yml`

7. Go to `localhost:9090` to see prometheus page

## CircleCI

- To use circleci simply add the repo project to circleci and commit a change to see it work.

- Any change you ant to add to circleci put it in the config,yml file located in `.circleci/config.yml`




