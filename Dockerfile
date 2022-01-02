FROM drupal:fpm
COPY ./php/composer.json /opt/drupal/composer.json
COPY ./php/composer.lock /opt/drupal/composer.lock
RUN composer install
WORKDIR /var/www/html