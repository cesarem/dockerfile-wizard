#!/bin/bash

echo "FROM nginxdemos/hello:plain-text"

echo "RUN apk update && apk add openssl && mkdir /etc/nginx/certs"

echo "ADD cert/fullchain.pem /etc/nginx/certs/"
echo "ADD privkey.pem /etc/nginx/certs/"
echo "ADD nginx.conf /etc/nginx/conf.d/"
echo "ADD nginx.conf.template /nginx.conf.template"

echo "ENV ENVIRONMENT=$C_ENVIRONMENT"

echo "RUN [\"/bin/sh\", \"-c\", \"envsubst '\$ENVIRONMENT' < /nginx.conf.template > /etc/nginx/conf.d/nginx.conf && exec nginx -g 'daemon off;'\"]"
