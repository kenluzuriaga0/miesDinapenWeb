FROM php:7.4-apache
COPY /src /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql
EXPOSE 80