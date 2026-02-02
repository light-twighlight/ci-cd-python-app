#!/bin/bash
SERVER_USER="ubuntu"
SERVER_IP="51.21.200.159"
IMAGE="ghcr.io/${GHCR_USERNAME}/fastapi-ci:latest"
KEY_PATH="./ec2-key.pem"

ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" $SERVER_USER@$SERVER_IP << EOF
  docker pull $IMAGE
  docker stop fastapi-ci || true
  docker rm fastapi-ci || true
  docker run -d --name fastapi-ci -p 8000:8000 $IMAGE
EOF
