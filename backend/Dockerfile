FROM php:8.2-fpm-alpine

# Instalar dependencias
RUN apk update && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    && pecl install uploadprogress \
    && docker-php-ext-enable uploadprogress \
    && apk del .build-deps $PHPIZE_DEPS \
    && chmod uga+x /usr/local/bin/install-php-extensions && sync \
    && install-php-extensions bcmath \
    bash \
    git \
    curl \
    libpng-dev \
    libjpeg-turbo-dev \
    libfreetype6-dev \
    zip \
    libzip-dev \
    unzip

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
