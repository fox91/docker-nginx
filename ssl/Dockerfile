FROM fox91/nginx:1.9.11
MAINTAINER Andrea Falco <fox91fox@gmail.com>

COPY conf /etc/nginx

COPY bin /usr/local/bin
RUN mkdir -p /etc/nginx/certs \
  && rm -rf /etc/nginx/certs/* \
  && create-certs
