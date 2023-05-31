FROM drupal@sha256:3d713c175e10f6ec5f39bbade123155226cafdaae0c543a152d9225009b8cbdc
COPY ./php/composer.json /opt/drupal/composer.json
COPY ./php/composer.lock /opt/drupal/composer.lock
RUN apt update \
    && apt install -y git \
    && composer install \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
WORKDIR /var/www/html

