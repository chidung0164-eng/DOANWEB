FROM php:8.2-apache

# copy project
COPY . /var/www/html/

# install mysql extension
RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 80