#!/bin/bash
set -e
set -u
set -x

# docker build -t fox91/nginx:latest ./
docker pull fox91/nginx:latest
IMAGE_ID=$(docker images -q fox91/nginx:latest)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12
docker tag "${IMAGE_ID}" fox91/nginx:1.9
docker tag "${IMAGE_ID}" fox91/nginx:1

# docker build -t fox91/nginx:profpm ./profpm
docker pull fox91/nginx:profpm
IMAGE_ID=$(docker images -q fox91/nginx:profpm)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1.9-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1-profpm

# docker build -t fox91/nginx:profpm-catchall ./profpm-catchall
docker pull fox91/nginx:profpm-catchall
IMAGE_ID=$(docker images -q fox91/nginx:profpm-catchall)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1.9-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1-profpm-catchall

# docker build -t fox91/nginx:ssl ./ssl
docker pull fox91/nginx:ssl
IMAGE_ID=$(docker images -q fox91/nginx:ssl)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12-ssl
docker tag "${IMAGE_ID}" fox91/nginx:1.9-ssl
docker tag "${IMAGE_ID}" fox91/nginx:1-ssl

# docker build -t fox91/nginx:ssl-profpm ./ssl-profpm
docker pull fox91/nginx:ssl-profpm
IMAGE_ID=$(docker images -q fox91/nginx:ssl-profpm)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12-ssl-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1.9-ssl-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1-ssl-profpm

# docker build -t fox91/nginx:ssl-profpm-catchall ./ssl-profpm-catchall
docker pull fox91/nginx:ssl-profpm-catchall
IMAGE_ID=$(docker images -q fox91/nginx:ssl-profpm-catchall)
docker tag "${IMAGE_ID}" fox91/nginx:1.9.12-ssl-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1.9-ssl-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1-ssl-profpm-catchall
