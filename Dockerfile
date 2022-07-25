FROM php:7.0.33-apache

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt-get update
RUN docker-php-ext-install mysqli pdo pdo_mysql intl && docker-php-ext-enable pdo_mysql
RUN apt-get -y install git
RUN git clone https://gitlab.com/ruany/litebans-php.git /var/www/html/
