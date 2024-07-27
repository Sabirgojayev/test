# Greet Service

## Description

This repository contains the Greet service and its Helm chart for deployment on a Kubernetes cluster.

## Repository Structure

greet-service
├── greet
│ ├── Dockerfile
│ ├── app.py
│ ├── requirements.txt
├── chart
│ └── greet-service
│ ├── Chart.yaml
│ ├── values.yaml
│ └── templates
│ ├── deployment.yaml
│ ├── service.yaml
│ └── ingress.yaml
├── .gitignore
├── README.md



- `greet/`: Contains the Greet service source code and Dockerfile.
- `chart/greet-service/`: Contains the Helm chart for deploying the Greet service.

## Prerequisites

- Docker
- Kubernetes cluster
- Helm
- AWS CLI configured with necessary permissions

## Setup Instructions

### 1. Build and Push Docker Image

First, navigate to the `greet` directory, build the Docker image, and push it to a Docker registry.

```sh
cd greet
docker build -t <registry>/greet-service:latest .
docker push <registry>/greet-service:latest

2. Update Helm Chart Values in override-values.yaml
Update the image.repository value in chart/override-values.yaml with your registry.

3. Deploy with Helm
Ensure you have Helm installed and configured. Then, deploy the Helm chart in your existing Kubernetes namespace.

helm install greet-service ./chart/greet-service --namespace <existing-namespace>

4. Access the Service
The Greet service will be accessible at https://greeting-api.acme.co if the DNS and TLS are configured correctly.


