#!/bin/bash
set -e
set -u
set -x

docker push docker.io/fox91/nginx:1.9.10
docker push docker.io/fox91/nginx:1.9
docker push docker.io/fox91/nginx:1

docker push docker.io/fox91/nginx:profpm
docker push docker.io/fox91/nginx:1.9.10-profpm
docker push docker.io/fox91/nginx:1.9-profpm
docker push docker.io/fox91/nginx:1-profpm

docker push docker.io/fox91/nginx:profpm-catchall
docker push docker.io/fox91/nginx:1.9.10-profpm-catchall
docker push docker.io/fox91/nginx:1.9-profpm-catchall
docker push docker.io/fox91/nginx:1-profpm-catchall

docker push docker.io/fox91/nginx:ssl
docker push docker.io/fox91/nginx:1.9.10-ssl
docker push docker.io/fox91/nginx:1.9-ssl
docker push docker.io/fox91/nginx:1-ssl

docker push docker.io/fox91/nginx:ssl-profpm
docker push docker.io/fox91/nginx:1.9.10-ssl-profpm
docker push docker.io/fox91/nginx:1.9-ssl-profpm
docker push docker.io/fox91/nginx:1-ssl-profpm

docker push docker.io/fox91/nginx:ssl-profpm-catchall
docker push docker.io/fox91/nginx:1.9.10-ssl-profpm-catchall
docker push docker.io/fox91/nginx:1.9-ssl-profpm-catchall
docker push docker.io/fox91/nginx:1-ssl-profpm-catchall
