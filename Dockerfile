FROM nginx:1.9.8
MAINTAINER Andrea Falco <fox91fox@gmail.com>

COPY content /usr/src/myapp
COPY conf /etc/nginx

WORKDIR /usr/src/myapp
