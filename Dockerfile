FROM nginx:1.9.5
MAINTAINER Andrea Falco <fox91fox@gmail.com>

COPY content /usr/src/myapp
COPY conf /etc/nginx

VOLUME /usr/src/myapp
VOLUME /etc/nginx
