FROM composer:latest

RUN addgroup -g 1000 ubuntu && adduser -G ubuntu -g ubuntu -s /bin/sh -D ubuntu

WORKDIR /var/www/html