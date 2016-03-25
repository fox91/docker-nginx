#!/bin/bash
set -e
set -u
set -x

docker pull fox91/nginx:latest

# docker build -t fox91/nginx:latest ./
docker tag -f fox91/nginx:latest docker.io/fox91/nginx:1.9.12
docker tag -f fox91/nginx:latest docker.io/fox91/nginx:1.9
docker tag -f fox91/nginx:latest docker.io/fox91/nginx:1

docker build -t docker.io/fox91/nginx:profpm ./profpm
docker tag -f fox91/nginx:profpm docker.io/fox91/nginx:1.9.12-profpm
docker tag -f fox91/nginx:profpm docker.io/fox91/nginx:1.9-profpm
docker tag -f fox91/nginx:profpm docker.io/fox91/nginx:1-profpm

docker build -t docker.io/fox91/nginx:profpm-catchall ./profpm-catchall
docker tag -f fox91/nginx:profpm-catchall docker.io/fox91/nginx:1.9.12-profpm-catchall
docker tag -f fox91/nginx:profpm-catchall docker.io/fox91/nginx:1.9-profpm-catchall
docker tag -f fox91/nginx:profpm-catchall docker.io/fox91/nginx:1-profpm-catchall

docker build -t docker.io/fox91/nginx:ssl ./ssl
docker tag -f fox91/nginx:ssl docker.io/fox91/nginx:1.9.12-ssl
docker tag -f fox91/nginx:ssl docker.io/fox91/nginx:1.9-ssl
docker tag -f fox91/nginx:ssl docker.io/fox91/nginx:1-ssl

docker build -t docker.io/fox91/nginx:ssl-profpm ./ssl-profpm
docker tag -f fox91/nginx:ssl-profpm docker.io/fox91/nginx:1.9.12-ssl-profpm
docker tag -f fox91/nginx:ssl-profpm docker.io/fox91/nginx:1.9-ssl-profpm
docker tag -f fox91/nginx:ssl-profpm docker.io/fox91/nginx:1-ssl-profpm

docker build -t docker.io/fox91/nginx:ssl-profpm-catchall ./ssl-profpm-catchall
docker tag -f fox91/nginx:ssl-profpm-catchall docker.io/fox91/nginx:1.9.12-ssl-profpm-catchall
docker tag -f fox91/nginx:ssl-profpm-catchall docker.io/fox91/nginx:1.9-ssl-profpm-catchall
docker tag -f fox91/nginx:ssl-profpm-catchall docker.io/fox91/nginx:1-ssl-profpm-catchall
