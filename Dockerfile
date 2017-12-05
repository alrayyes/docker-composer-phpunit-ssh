FROM composer:1.5.5

# PHP
RUN apk update && \
    apk add  --no-cache g++ make autoconf zlib-dev && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    docker-php-ext-install zip && \
    rm -rf /tmp/*
