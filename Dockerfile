FROM composer:latest

# PHP
RUN docker-php-ext-install zip
            
# Cleanup
RUN rm -rf /tmp/*
