FROM php:apache
RUN apt-get update -y && apt-get install -y libpng-dev
RUN docker-php-ext-install gd
COPY ./drupal7/ /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80