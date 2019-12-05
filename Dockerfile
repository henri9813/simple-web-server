FROM php:7.2-apache

ADD vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /app

RUN docker-php-ext-enable mysqli
RUN a2enmod rewrite
