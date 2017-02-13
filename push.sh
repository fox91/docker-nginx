#!/bin/bash
set -e
set -u
set -x

docker push fox91/nginx:1.10.3
docker push fox91/nginx:1.10
docker push fox91/nginx:1

docker push fox91/nginx:profpm
docker push fox91/nginx:1.10.3-profpm
docker push fox91/nginx:1.10-profpm
docker push fox91/nginx:1-profpm

docker push fox91/nginx:profpm-catchall
docker push fox91/nginx:1.10.3-profpm-catchall
docker push fox91/nginx:1.10-profpm-catchall
docker push fox91/nginx:1-profpm-catchall
