FROM php:7.2-apache

RUN a2enmod rewrite

WORKDIR /usr/local

COPY ./rabbitmq-c ./rabbitmq-c
COPY ./amqp-1.9.4 ./amqp


RUN ( \
        cd rabbitmq-c \
        && ./configure && make && make install \
    ) \
    && ( \
        cp ./rabbitmq-c/librabbitmq/amqp_ssl_socket.h ./amqp \
        && cd amqp && /usr/local/bin/phpize \
        && ./configure --with-amqp \
        && make && make install \
        && docker-php-ext-enable amqp \
    ) \
    && ( \
         pecl install redis-4.2.0 && docker-php-ext-enable redis \
        && pecl install swoole && docker-php-ext-enable swoole \
    )

COPY ./info.php /var/www/html