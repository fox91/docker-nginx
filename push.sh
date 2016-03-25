#!/bin/bash
set -e
set -u
set -x

docker push fox91/nginx:1.9.12
docker push fox91/nginx:1.9
docker push fox91/nginx:1

docker push fox91/nginx:profpm
docker push fox91/nginx:1.9.12-profpm
docker push fox91/nginx:1.9-profpm
docker push fox91/nginx:1-profpm

docker push fox91/nginx:profpm-catchall
docker push fox91/nginx:1.9.12-profpm-catchall
docker push fox91/nginx:1.9-profpm-catchall
docker push fox91/nginx:1-profpm-catchall
