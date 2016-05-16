#!/bin/bash
set -e
set -u
set -x

# docker build -t fox91/nginx:latest ./
docker pull fox91/nginx:latest
IMAGE_ID=$(docker images -q fox91/nginx:latest)
docker tag "${IMAGE_ID}" fox91/nginx:1.10.0
docker tag "${IMAGE_ID}" fox91/nginx:1.10
docker tag "${IMAGE_ID}" fox91/nginx:1

# docker build -t fox91/nginx:profpm ./profpm
docker pull fox91/nginx:profpm
IMAGE_ID=$(docker images -q fox91/nginx:profpm)
docker tag "${IMAGE_ID}" fox91/nginx:1.10.0-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1.10-profpm
docker tag "${IMAGE_ID}" fox91/nginx:1-profpm

# docker build -t fox91/nginx:profpm-catchall ./profpm-catchall
docker pull fox91/nginx:profpm-catchall
IMAGE_ID=$(docker images -q fox91/nginx:profpm-catchall)
docker tag "${IMAGE_ID}" fox91/nginx:1.10.0-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1.10-profpm-catchall
docker tag "${IMAGE_ID}" fox91/nginx:1-profpm-catchall
