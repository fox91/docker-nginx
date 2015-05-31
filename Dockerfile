FROM ubuntu:trusty
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV NGINX_VERSION 1.8.0-1+trusty1

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv C300EE8C \
 && echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" >> /etc/apt/sources.list \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      nginx=${NGINX_VERSION} \
      --no-install-recommends \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
EXPOSE 443

WORKDIR /var/www/html
CMD ["nginx", "-g", "daemon off;"]
