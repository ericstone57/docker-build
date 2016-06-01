FROM php:7-fpm

MAINTAINER Eric <ericstone.dev@gmail.com>


RUN apt-get update

# Install opcache
RUN docker-php-ext-install opcache

# Install APCu
RUN pecl install apcu
RUN echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini

# Install bcmath
RUN docker-php-ext-install bcmath

# Install bz2
RUN apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

# Install GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install mbstring
RUN docker-php-ext-install mbstring

# Install mcrypt
RUN apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mcrypt

# Install PDO
# RUN apt-get install -y freetds-dev php5-sybase
RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install pdo_oci
# RUN docker-php-ext-install pdo_odbc
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql
# RUN apt-get install -y libsqlite3-dev
# RUN docker-php-ext-install pdo_sqlite

# Install phpredis 2.2.7
RUN apt-get install -y unzip
WORKDIR /root
COPY ./lib/phpredis-2.2.7.zip phpredis-2.2.7.zip
RUN unzip phpredis-2.2.7.zip
WORKDIR phpredis-2.2.7
RUN phpize
RUN ./configure
RUN make && make install
RUN echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

# Install memcached
COPY ./lib/memcached-2.2.0.zip memcached-2.2.0.zip
RUN apt-get install -y libmemcached-dev zlib1g-dev libncurses5-dev
RUN mkdir /usr/src/php/ext/memcached-2.2.0
RUN unzip memcached-2.2.0.zip -d /usr/src/php/ext/memcached-2.2.0
RUN rm memcached-2.2.0.zip
RUN docker-php-ext-install memcached-2.2.0

# Install mongo
RUN pecl install mongodb-beta
RUN echo "extension=mongo.so" > /usr/local/etc/php/conf.d/mongo.ini

# Install ftp
RUN docker-php-ext-install ftp

# Install intl
RUN apt-get install -y libicu-dev
RUN pecl install intl
RUN docker-php-ext-install intl

