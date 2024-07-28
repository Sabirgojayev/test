# Greet Service

## Description

This repository contains the Greet service and its Helm chart for deployment on a Kubernetes cluster.

## Repository Structure

greet-service
├── greet-app
│ ├── Dockerfile
│ ├── app.py
│ ├── requirements.txt
├── chart
|   |── greet-chart
│       ├── Chart.yaml
│       ├── values.yaml
|       ├── override-values.yaml
│       └── templates
│           ├── greet
│           ├── redis
│           └── _helpers.tpl
|
├── README.md



- `greet-app/`: Contains the Greet service source code and Dockerfile.
- `chart/greet-chart/`: Contains the Helm chart for deploying the Greet service.

## Prerequisites

- Docker
- Kubernetes cluster
- Helm

## Setup Instructions

### 1. Build and Push Docker Image

First, navigate to the `greet` directory, build the Docker image, and push it to a Docker registry.

```sh
cd greet-app
docker build -t <registry>/greet-service:latest .
docker push <registry>/greet-service:latest

2. Update Helm Chart Values in override-values.yaml
Update the image.repository value in chart/greet-chart/override-values.yaml with your registry.

3. Deploy with Helm
Ensure you have Helm installed and configured. Then, deploy the Helm chart in your existing Kubernetes namespace.

helm install -f chart/greet-chart/override-values.yaml greet-service ./chart/greet-chart --namespace <existing-namespace>

4. Access the Service
The Greet service will be accessible at https://greeting-api.acme.co if the DNS and TLS are configured correctly.


