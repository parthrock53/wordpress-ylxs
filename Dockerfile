FROM wordpress:latest

COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

RUN apt-get update && apt-get install -y magic-wormhole \
 && usermod -s /bin/bash www-data \
 && chown www-data:www-data /var/www
USER www-data:www-data
