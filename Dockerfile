# Build stage
FROM serversideup/php:8.3-fpm-nginx as builder

ENV PHP_OPCACHE_ENABLE=1

USER root

# Install dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libzip-dev \
    libicu-dev \
    libonig-dev \
    libxslt1-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd zip intl mbstring xsl exif bcmath

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN npm ci
RUN npm run build

USER root
RUN composer install --no-interaction --optimize-autoloader --no-dev

# Runtime stage
FROM serversideup/php:8.3-fpm-nginx

ENV PHP_OPCACHE_ENABLE=1

USER root

# Copy PHP extensions from the builder stage
COPY --from=builder /usr/local/lib/php/extensions/no-debug-non-zts-20200930 /usr/local/lib/php/extensions/no-debug-non-zts-20200930
COPY --from=builder /usr/local/etc/php/conf.d /usr/local/etc/php/conf.d

COPY --from=builder --chown=www-data:www-data /var/www/html /var/www/html

USER www-data
