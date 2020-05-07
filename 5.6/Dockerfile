FROM php:5.6-apache

ADD vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /app

RUN apt update \
    && apt install --yes git libxml2-dev zlib1g-dev libzip-dev libgmp-dev libcurl4-gnutls-dev \
    && apt clean \
    && rm -rf /var/lib/apt

RUN docker-php-ext-install \
    bcmath \
    curl \
    hash \
    intl \
    json \
    mysqli \
    pdo_mysql \
    xmlrpc \
    zip

RUN a2enmod rewrite
