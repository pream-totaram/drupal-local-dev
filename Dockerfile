FROM drupal@sha256:10b31abc9d6372b5a102ba1ac49215bf9ac8a154d2a9b702c3bb020c46185e78
COPY ./php/composer.json /opt/drupal/composer.json
COPY ./php/composer.lock /opt/drupal/composer.lock
RUN apt update \
    && apt install -y git \
    && composer install
WORKDIR /var/www/html
