## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/fox91/nginx/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/fox91/nginx/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull fox91/nginx`

   (alternatively, you can build an image from Dockerfile: `docker build -t="fox91/nginx" github.com/fox91/docker-nginx`)


### Usage

    docker run -d -p 80:80 fox91/nginx

#### Attach persistent/shared directories

    docker run -d -p 80:80 -v <sites-enabled-dir>:/etc/nginx/conf.d -v <certs-dir>:/etc/nginx/certs -v <log-dir>:/var/log/nginx -v <html-dir>:/var/www/html dockerfile/nginx

After few seconds, open `http://<host>` to see the welcome page.
