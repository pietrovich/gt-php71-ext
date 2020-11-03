FROM pietrovich/gt-php71-base:latest
MAINTAINER pietrovich@users.noreply.github.com

RUN docker-php-ext-install mcrypt

RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install opcache

RUN pecl install imagick
RUN docker-php-ext-enable imagick

RUN docker-php-ext-install bz2

RUN docker-php-ext-install zip

RUN docker-php-ext-install xml

RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql

RUN docker-php-ext-install mysqli

RUN pecl install apcu
RUN docker-php-ext-enable apcu

RUN docker-php-ext-install calendar
RUN docker-php-ext-install exif
RUN docker-php-ext-install gettext


RUN docker-php-ext-install gmp

RUN pecl install igbinary
RUN docker-php-ext-enable igbinary

RUN pecl install mongodb
RUN docker-php-ext-enable mongodb

RUN docker-php-ext-install pcntl


RUN pecl install redis
RUN docker-php-ext-enable redis

RUN docker-php-ext-install shmop
RUN docker-php-ext-install sockets

RUN docker-php-ext-install xsl
RUN docker-php-ext-install wddx

#####
#RUN docker-php-ext-install mysqlnd
