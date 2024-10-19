FROM php:8.2-fpm-alpine

# Instalar dependencias
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
    pdo_pgsql \
    pgsql \
    #sql server
    && cd ~ \
    # Install composer
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "copy('https://composer.github.io/installer.sig', 'signature');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === trim(file_get_contents('signature'))) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

# Instalar extensiones de PHP necesarias
RUN docker-php-ext-install pdo pdo_mysql gd zip

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurar el directorio de trabajo
WORKDIR /var/www/html

# Copiar archivos de la aplicación
COPY . .

# Configuración de permisos
RUN chown -R www-data:www-data /var/www && \
    chmod -R 755 /var/www

# Instalar dependencias de Composer
RUN composer install --no-dev --optimize-autoloader

# Copiar el archivo de ejemplo .env y generar APP_KEY
RUN cp .env.example .env
RUN php artisan key:generate
RUN php artisan passport:key

# Crear enlaces simbólicos
RUN php artisan storage:link

# Exponer el puerto 9000 para PHP-FPM
EXPOSE 9000

# Ejecutar PHP-FPM
CMD ["php-fpm"]
