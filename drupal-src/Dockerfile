FROM webdevops/php-apache:ubuntu-15.04
RUN apt-get update -y && apt-get install -y libpng-dev
#RUN docker-php-ext-install gd
COPY ./drupal7/ /app/
WORKDIR /app/
EXPOSE 80