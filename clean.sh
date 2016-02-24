#!/bin/bash
set -e
set -u
set -x

# fox91/nginx:latest
docker rmi fox91/nginx:1.9.11
docker rmi fox91/nginx:1.9
docker rmi fox91/nginx:1

# fox91/nginx:profpm
docker rmi fox91/nginx:1.9.11-profpm
docker rmi fox91/nginx:1.9-profpm
docker rmi fox91/nginx:1-profpm

# fox91/nginx:profpm-catchall
docker rmi fox91/nginx:1.9.11-profpm-catchall
docker rmi fox91/nginx:1.9-profpm-catchall
docker rmi fox91/nginx:1-profpm-catchall

# fox91/nginx:ssl
docker rmi fox91/nginx:1.9.11-ssl
docker rmi fox91/nginx:1.9-ssl
docker rmi fox91/nginx:1-ssl

# fox91/nginx:ssl-profpm
docker rmi fox91/nginx:1.9.11-ssl-profpm
docker rmi fox91/nginx:1.9-ssl-profpm
docker rmi fox91/nginx:1-ssl-profpm

# fox91/nginx:ssl-profpm-catchall
docker rmi fox91/nginx:1.9.11-ssl-profpm-catchall
docker rmi fox91/nginx:1.9-ssl-profpm-catchall
docker rmi fox91/nginx:1-ssl-profpm-catchall
