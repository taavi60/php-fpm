FROM php:5.6.35-fpm-alpine3.4
RUN apk update && apk add gettext-dev libmcrypt-dev && docker-php-ext-install pdo_mysql mcrypt gettext && apk del gcc make && rm -rf /var/cache/apk/*
COPY php.ini /usr/local/etc/php/php.ini
