FROM php:7.2-apache

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt-get update
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_my>
RUN apt-get -y install git
RUN git clone https://gitlab.com/ruany/litebans-php.git /var/www/html/
