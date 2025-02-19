FROM serversideup/php:8.3-fpm-nginx-alpine

ENV PHP_OPCACHE_ENABLE=1

USER root

RUN install-php-extensions exif bcmath && \
    apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community nodejs-current npm sqlite sqlite-libs sqlite-dev

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN npm install && \
    npm run build && \
    composer install --no-interaction --optimize-autoloader --no-dev && \
    find /var/www/html/storage/framework /var/www/html/storage/logs /var/www/html/bootstrap/cache -type d -exec chmod 775 {} \;
