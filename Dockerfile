FROM serversideup/php:8.3-fpm-nginx-alpine

ENV PHP_OPCACHE_ENABLE=1

USER root

RUN install-php-extensions exif bcmath

RUN apk add --no-cache nodejs npm;

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN npm ci
RUN npm run build

RUN composer install --no-interaction --optimize-autoloader --no-dev
