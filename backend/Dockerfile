FROM php:8.2-fpm-alpine
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# COPY ./php/php.ini /usr/local/etc/php/
# COPY ../nginx/php/php.ini /usr/local/etc/php/
COPY ./php.ini /usr/local/etc/php/

LABEL MAINTAINER="SATYADEEP G" \
    "GitHub Link"="https://github.com/satyadeep" \
    "PHP Version"="8.2" \
    "Alpine Linux Version"="3.17"

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN apk update && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    && pecl install uploadprogress \
    && docker-php-ext-enable uploadprogress \
    && apk del .build-deps $PHPIZE_DEPS \
    && chmod uga+x /usr/local/bin/install-php-extensions && sync \
    && install-php-extensions bcmath \
    # bz2 \
    # calendar \
    curl \
    exif \
    fileinfo \
    # ftp \
    gd \
    # gettext \
    # imagick \
    # imap \
    intl \
    # ldap \
    mbstring \
    # mcrypt \
    # memcached \
    # mongodb \
    mysqli \
    # opcache \
    openssl \
    pdo \
    pdo_mysql \
    # redis \
    # soap \
    sodium \
    # sysvsem \
    # sysvshm \
    # xmlrpc \
    xsl \
    zip \
    # pdo_pgsql \
    # pgsql \
    #sql server
    && cd ~ \
    # Install composer
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "copy('https://composer.github.io/installer.sig', 'signature');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === trim(file_get_contents('signature'))) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

# Configura el directorio de trabajo
WORKDIR /var/www/apitev
RUN chown -R www-data:www-data /var/www
RUN chmod 755 /var/www
# Copia primero los archivos composer.json y composer.lock
COPY composer.json composer.lock ./

# Copia el resto de los archivos de tu proyecto Laravel
COPY . .
# Instala las dependencias de Composer
RUN composer install
RUN cp .env.example .env
# RUN php artisan passport:key
RUN php artisan passport:key --force
RUN php artisan storage:link
# EXPOSE 3306
#RUN php artisan migrate --seed
# RUN php artisan passport:key
#CMD ["php", "artisan", "migrate", "--seed"]
# CMD ["php", "artisan", "serve", "--host=0.0.0.0"]

# Expon el puerto de PHP-FPM (si es necesario)
EXPOSE 9000


# CMD para iniciar PHP-FPM
# CMD ["php-fpm"]
# CMD ["sleep", "infinity"]
