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

docker push fox91/nginx:ssl
docker push fox91/nginx:1.9.12-ssl
docker push fox91/nginx:1.9-ssl
docker push fox91/nginx:1-ssl

docker push fox91/nginx:ssl-profpm
docker push fox91/nginx:1.9.12-ssl-profpm
docker push fox91/nginx:1.9-ssl-profpm
docker push fox91/nginx:1-ssl-profpm

docker push fox91/nginx:ssl-profpm-catchall
docker push fox91/nginx:1.9.12-ssl-profpm-catchall
docker push fox91/nginx:1.9-ssl-profpm-catchall
docker push fox91/nginx:1-ssl-profpm-catchall
