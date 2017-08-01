FROM composer:latest

# PHP
RUN apk update && \
    apk add  --no-cache zlib && \
    docker-php-source extract && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    docker-php-source delete && \
    docker-php-ext-install zip
            
# Cleanup
RUN rm -rf /tmp/*
