FROM php:apache
COPY . /var/www/html/
WORKDIR /var/www/html/
RUN sudo apt-get install curl
RUN mkdir temp
RUN cd temp
RUN curl https://www.drupal.org/download-latest/tar.gz
EXPOSE 80