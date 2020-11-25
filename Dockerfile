FROM webdevops/php-apache:ubuntu-15.04
RUN apt-get update -y && apt-get install -y libpng-dev
COPY ./drupal-src/ /app/
WORKDIR /app/
EXPOSE 80