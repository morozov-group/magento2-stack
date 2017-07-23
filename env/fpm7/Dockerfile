FROM php:7.0-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        ssh-client \
        git \
        libxml2-dev libxslt-dev \
        zlib1g-dev libicu-dev g++ \
        libmagickwand-6.q16-dev \
    && ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/MagickWand-config /usr/bin \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install opcache gd bcmath iconv intl soap json mcrypt mbstring pdo pdo_mysql zip xml xsl \
    && pecl install redis imagick \
    && docker-php-ext-enable imagick redis \
    && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer \
    && apt-get autoremove -y

CMD ["php-fpm"]
