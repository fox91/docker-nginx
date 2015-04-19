FROM ubuntu:trusty

MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV NGINX_VERSION 1.7.12-1+trusty0

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv C300EE8C
RUN echo 'deb http://ppa.launchpad.net/nginx/development/ubuntu trusty main' | tee /etc/apt/sources.list.d/nginx.list

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nginx=${NGINX_VERSION} && \
    apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

WORKDIR /etc/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
