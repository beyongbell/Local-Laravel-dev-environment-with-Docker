FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 ubuntu && adduser -G ubuntu -g ubuntu -s /bin/sh -D ubuntu

RUN chown ubuntu:ubuntu /var/www/html