FROM drupal@sha256:910d48868a0d48c7621996c0597e7319673e7cddd40b1080545a5b5ed93d58c3
COPY ./php/composer.json /opt/drupal/composer.json
COPY ./php/composer.lock /opt/drupal/composer.lock
RUN apt update \
    && apt install -y git \
    && composer install
WORKDIR /var/www/html
