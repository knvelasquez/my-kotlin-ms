#!/bin/bash
APP_NAME="mi-app"
ENVIRONMENT="dev"
CONTAINER_NAME="${APP_NAME}-${ENVIRONMENT}"
IMAGE_NAME="${APP_NAME}:${BRANCH}-${ENVIRONMENT}"
PORT=8080

docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

docker run -d \
    --name $CONTAINER_NAME \
    -p $PORT:8080 \
    $IMAGE_NAME

    #comment
