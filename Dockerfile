FROM serversideup/php:8.3-fpm-nginx-alpine

ENV PHP_OPCACHE_ENABLE=1

USER root

RUN install-php-extensions exif bcmath

RUN if [ -f /etc/alpine-release ]; then \
        apk add --no-cache nodejs npm; \
    else \
        curl -sL https://deb.nodesource.com/setup_20.x | bash - \
    fi

RUN apt-get install -y nodejs

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN npm ci
RUN npm run build

RUN composer install --no-interaction --optimize-autoloader --no-dev
