FROM drupal:fpm
COPY ./php/composer.json /opt/drupal/composer.json
COPY ./php/composer.lock /opt/drupal/composer.lock
RUN apt update \
    && apt install -y git \
    && composer install
WORKDIR /var/www/html
