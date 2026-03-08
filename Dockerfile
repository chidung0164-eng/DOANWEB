FROM php:8.2-apache

# disable module gây conflict
RUN a2dismod mpm_event || true
RUN a2enmod mpm_prefork

# copy project
COPY . /var/www/html/

# cài mysql extension
RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 80