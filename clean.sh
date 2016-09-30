#!/bin/bash
set -e
set -u
set -x

# fox91/nginx:latest
docker rmi fox91/nginx:1.10.1
docker rmi fox91/nginx:1.10
docker rmi fox91/nginx:1

# fox91/nginx:profpm
docker rmi fox91/nginx:1.10.1-profpm
docker rmi fox91/nginx:1.10-profpm
docker rmi fox91/nginx:1-profpm

# fox91/nginx:profpm-catchall
docker rmi fox91/nginx:1.10.1-profpm-catchall
docker rmi fox91/nginx:1.10-profpm-catchall
docker rmi fox91/nginx:1-profpm-catchall
