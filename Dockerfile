FROM serversideup/php:8.3-fpm-nginx-alpine

ENV PHP_OPCACHE_ENABLE=1

USER root

RUN install-php-extensions exif bcmath

# Install a newer version of Node from the edge community repository along with SQLite packages
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community nodejs-current npm sqlite sqlite-libs sqlite-dev

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN npm install
RUN npm run build

RUN composer install --no-interaction --optimize-autoloader --no-dev